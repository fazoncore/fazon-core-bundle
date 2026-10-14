# FAZON — Bounded TLS 1.3 Profile Check, v0.1

**Versioned laboratory evidence candidate. Not a release verified under `VERIFY_POLICY.md`.**

This directory is prepared for owner-controlled submission of the exact approved laboratory archive. The preparation manifest does not attest that a GitHub upload, merge, remote readback, signature check or release has occurred. Those actions need their own receipts.

## Exact evidence archive

[FAZON_PQC_TLS13_PROFILE_LAB_V0_1_20261014T124252Z_EVIDENCE.zip](FAZON_PQC_TLS13_PROFILE_LAB_V0_1_20261014T124252Z_EVIDENCE.zip) contains the original 95-file evidence tree, including protocol, source code, raw client/server observations, recorded TLS byte streams and offline checks.

- Size: **117926 bytes**.
- SHA-256: `af2a7bbe4b95cbfd34fde3242d4886b64c6c0f622cc5eca3e0b60f5c1faa9e3a`.
- Observation window: `2026-10-14T12:42:53.829311Z` to `2026-10-14T12:42:55.504495Z`.
- Environment reported by the original experiment: OpenSSL 3.5.5; TLS 1.3; loopback only.

## Bounded results

| Case | Selected group | Session established | Receiver application bytes | Meaning |
|---|---|---|---:|---|
| C1 | SecP384r1MLKEM1024 | Yes | 42 | Within the declared laboratory profile |
| C2 | No final session; fatal alert 40 | No | 0 | Expected rejection without a shared permitted group |
| C3 | secp384r1 | Yes | 54 | Deliberately widened configuration detected as outside the original profile |

C3 passing is the expected detection of a negative control. It is not successful enforcement of the original profile: the connection completed and the synthetic marker reached the server. No FAZON pre-action service stopped C3. This is not a hostile downgrade or an OpenSSL vulnerability.

The report records one live attempt per case, 44 harness assertions, 7 parser checks and 65 offline rechecks. The latter are checks of the saved records, not additional network sessions or an independent organizational validation. Receiver observations and the recording relay were under the same local control.

Authentication used a temporary classical ECDSA P-384 certificate. No claim of fully post-quantum authentication, CNSA/FIPS compliance, production readiness, system-wide no-bypass enforcement, reliability statistics or cryptanalytic assurance is made.

## Contents and provenance

- Original archive: unchanged, not rebuilt.
- Original archive sidecar: unchanged.
- Original post-seal JSON: unchanged.
- `RESULT.json`: exact copy of the file inside the archive. Its `raw/...` paths are relative to the extracted original evidence root, not this outer directory.
- `UPLOAD_MANIFEST.json`: preparation-time identities and bounded integrity checks for five files.
- `SHA256SUMS.txt`: digests of six files, including the preparation manifest; excludes itself.

Original `github_write=false` and pending-approval flags describe the historical collection state. They are not updated retrospectively. This outer index does not replace the original report, commands or limitations.

## Verification and release boundary

After a human-controlled upload, bind the record to its exact commit. Download the archive at that commit and compare its SHA-256 and size, then verify CRC and the inner manifest. A screenshot of the upload or a matching filename does not replace that readback.

The repository [release verification policy](../../VERIFY_POLICY.md) additionally requires Sigstore verification, Rekor digest linkage and pinned, versioned trust material. None is newly performed by this preparation. Do not call this a verified release or dispatch a signing workflow merely because the archive is present.

## Инструкция владельцу: загрузка и хранение

Репозиторий: `fazoncore/fazon-core-bundle`. Откройте папку `records`, затем `Add file` → `Upload files`.

Перетащите из Проводника только папку `2026-10-14-pqc-tls13-profile-lab-v0.1`. В списке загрузки должно быть ровно **7 файлов** под этим именем папки. Сам транспортный ZIP `FAZON_PQC_GITHUB_UPLOAD_V1.zip` загружать в GitHub не нужно; исходный evidence ZIP внутри папки не распаковывайте.

Commit message: `Add bounded TLS 1.3 profile lab evidence v0.1`.

Выберите новую ветку `record/pqc-tls13-profile-lab-v0.1` и `Propose changes`. Затем создайте pull request. **Не выполняйте Merge и не создавайте Release или tag до обратной проверки файлов.** Не отключайте защиту GitHub и не подтверждайте обход предупреждений.

Сохраните эту папку локально вместе с транспортным ZIP и его внешним `.sha256`; не заменяйте прежние архивы. Локальная проверка из этой папки в Git Bash: `sha256sum -c SHA256SUMS.txt`. Она проверяет целостность, не научную истинность или цифровую подпись релиза.

Подготовка сделана отдельно от закрытых рукописей, патентных материалов и переписки. Новые лабораторные соединения, отправка комментариев, изменения сервера, workflow и GitHub-запись в этом шаге не выполнялись.
