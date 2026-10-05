# Verify

This record pack is prepared from the owner-authorized prepublication freeze:

`2D95862F3E558D031FEA6880307FFB755D0E0738334AE250F9DFB4F96F9DE931`

## Internal file verification

Run:

```bash
sha256sum -c SHA256SUMS.txt
```

`SHA256SUMS.txt` binds every file in this pack except itself.

## External publication verification

After a separately owner-authorized GitHub write, verify:

1. the exact repository path is `records/FAZON-REC-2026-10-05-VERIFIED-PAST-NOT-CURRENT-AUTHORITY-v1.0_PUBLIC_PACK`;
2. the commit descends from the preflight base `f3761236076a1fedf575625df32533effb10d079` unless a later owner-reviewed base is explicitly authorized;
3. the tag is `FAZON-REC-2026-10-05-VERIFIED-PAST-NOT-CURRENT-AUTHORITY-v1.0`;
4. release assets match the separately frozen release-asset SHA-256 list;
5. the exact public-pack ZIP deposited to Zenodo matches the GitHub release asset byte-for-byte.

Until those actions occur, this candidate makes no claim that a GitHub release or Zenodo DOI exists.
