# FAZON Release Verification Policy (v2026-02)

A release is considered verified only if all conditions below are satisfied.

1. Artifact integrity
   - `release.zip.sha256` must match the computed SHA-256 of `release.zip`.

2. Sigstore signature verification
   - `cosign verify-blob` (or equivalent) must validate the bundle and signature.

3. Rekor linkage (secondary verification)
   - The SHA-256 digest of the artifact MUST match the SHA-256 digest embedded in the corresponding Rekor log entry referenced by the bundle.
   - If the Rekor entry digest cannot be extracted, verification MUST fail.

4. Trust material
   - Trusted roots and Rekor trust material must be pinned and versioned in the pipeline.
   - Any change to trust roots is treated as a breaking change and requires a version bump of the policy.

Outputs required for every release:
- `release.zip`
- `release.zip.sha256`
- `release.zip.sigstore.json`
- `release.manifest.json`
