# FAZON Evidence Traces v1 (Public-Safe Examples)
Record ID: FAZON-REC-2026-02-02-EVIDENCE-TRACES-v1

## Purpose
Provide **three synthetic, public-safe** examples of FAZON-style decision traces:
- HOLD (blocked)
- FRAGMENT (partial execution)
- SEND (executed)

These examples demonstrate the **Evidence Layer** and the **Execution Envelope** concept without disclosing:
- numeric thresholds/bounds
- internal endpoints/URLs
- live topology
- key material or secrets

## Files
- evidence_trace_schema.json (public-safe schema)
- example_trace_hold.json
- example_trace_fragment.json
- example_trace_send.json
- evidence-pack.pdf (human-readable summary)
- SHA256SUMS.txt

## Notes
- All hashes in example traces are deterministic placeholders derived from artifact IDs (for demonstration only).
- Replace placeholders with real artifact hashes in production/private environments.
