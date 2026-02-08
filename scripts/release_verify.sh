#!/usr/bin/env bash
set -euo pipefail

ARTIFACT="${1:-./dist/release.zip}"
BUNDLE="${2:-./dist/release.zip.sigstore.json}"
REKOR_URL="${REKOR_URL:-https://rekor.sigstore.dev}"

SHA256_LOCAL="$(sha256sum "$ARTIFACT" | awk '{print $1}')"

UUIDS="$(python3 - <<'PY'
import json,sys
j=json.load(open(sys.argv[1],'rb'))
uu=set()
def walk(x):
  if isinstance(x, dict):
    for k,v in x.items():
      lk=k.lower()
      if lk in ("uuid","entryuuid","rekor_uuid","rekorentryuuid"):
        if isinstance(v,str): uu.add(v)
      walk(v)
  elif isinstance(x, list):
    for i in x: walk(i)
walk(j)
print("\n".join(sorted(uu)))
PY
"$BUNDLE")"

if [ -z "${UUIDS:-}" ]; then
  echo "NO_REKOR_UUID_FOUND"
  exit 2
fi

FOUND=0
for u in $UUIDS; do
  curl -fsSL "${REKOR_URL}/api/v1/log/entries/${u}" > "/tmp/rekor_${u}.json"
  jq -r 'to_entries[0].value.body' "/tmp/rekor_${u}.json" | base64 -d > "/tmp/rekor_${u}.body.json"

  DIG="$(jq -r '
    .. | objects
    | ( .spec? // empty )
    | ( .data? // empty )
    | ( .hash? // empty )
    | select(.algorithm?=="sha256")
    | .value? // empty
  ' "/tmp/rekor_${u}.body.json" | head -n1 || true)"

  if [ -n "${DIG:-}" ] && [ "$DIG" != "null" ]; then
    if [ "$DIG" = "$SHA256_LOCAL" ]; then
      FOUND=1
      break
    else
      echo "REKOR_DIGEST_MISMATCH"
      echo "LOCAL=$SHA256_LOCAL"
      echo "REKOR=$DIG"
      exit 3
    fi
  fi
done

if [ "$FOUND" -ne 1 ]; then
  echo "REKOR_DIGEST_NOT_EXTRACTED"
  exit 4
fi

echo "OK"
