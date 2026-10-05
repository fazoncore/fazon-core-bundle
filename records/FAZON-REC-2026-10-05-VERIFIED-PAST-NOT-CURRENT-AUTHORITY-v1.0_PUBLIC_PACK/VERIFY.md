# Verify

## 1. Verify the files in this pack

Run:

```bash
sha256sum -c SHA256SUMS.txt
```

`SHA256SUMS.txt` binds every file in this pack except itself.

## 2. Verify the immutable provenance chain

Source prepublication freeze:

`2D95862F3E558D031FEA6880307FFB755D0E0738334AE250F9DFB4F96F9DE931`

Final article identities:

```text
ARTICLE_MD_SHA256=87BF0AB98E1864A61344B1CB4557669A50384FFD94AC193AEDE43859B08DD96F
ARTICLE_PDF_SHA256=C27CB92BEA9890F2636FBEEE7AA8EB9DA8B8B9757601F266A1485ACEA9963AC2
COVER_SHA256=47FB979742065C62BB0E637533ED7D3863C77C3C4A8D46664CDE39EC5F9BB800
```

Initial add-only GitHub commit:

`4ccbf1dd3fb17d8e9c4fc166d02e3290f2ba8e8c`

Initial merge commit:

`568a4fc1bd9310593fb31d02e51fba1c48e1878a`

Initial merged tree:

`710d387cd69915c1eac530c8b04b979bdefe63fa`

The record path is:

`records/FAZON-REC-2026-10-05-VERIFIED-PAST-NOT-CURRENT-AUTHORITY-v1.0_PUBLIC_PACK`

## 3. Verify GitHub tag and release externally

The intended tag is:

`FAZON-REC-2026-10-05-VERIFIED-PAST-NOT-CURRENT-AUTHORITY-v1.0`

The tag/release must ultimately resolve to the owner-authorized canonical release commit. Tag and release state are external provenance and are not asserted merely because this file exists.

## 4. Verify Zenodo exact-byte deposit

The exact `PUBLIC_PACK.zip` attached to the GitHub release must be deposited to Zenodo byte-for-byte under a separately owner-authorized action.

Verify:

```text
GITHUB_RELEASE_PUBLIC_PACK_ZIP_SHA256
==
ZENODO_DEPOSIT_PUBLIC_PACK_ZIP_SHA256
```

The DOI is external provenance metadata and must be read back from Zenodo after publication.
