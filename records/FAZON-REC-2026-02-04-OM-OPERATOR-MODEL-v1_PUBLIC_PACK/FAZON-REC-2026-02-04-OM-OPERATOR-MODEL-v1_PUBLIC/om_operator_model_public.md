# FAZON OM (Operator Model) v1 — Public-Safe
Record ID: FAZON-REC-2026-02-04-OM-OPERATOR-MODEL-v1

Purpose: define an invariant Operator Model (OM) across domains while allowing domain adapters to supply different meaning payloads.

Public-safe:
- no numeric thresholds/bounds
- no raw measurements, keys, or secrets
- no live topology or internal endpoints
- no certification/compliance claims

Canonical statement:
One operator model, many meanings: the form is invariant; domain adapters supply the payload.

OM invariant (five fields):
1) Surface — control_plane / audit_log / change_control
2) Action Class — OBSERVE / RECOMMEND / EXECUTE_CONSTRAINED / EXECUTE_SAFETY_CRITICAL
3) Admissibility (Envelope) — HOLD / FRAGMENT / SEND
4) Authority — policy / human confirmation / override
5) Evidence — verifiable why now / why not now trace + artifact hashes

Boundary:
[Domain-specific surface] → [FAZON Adapter] → [Unified OM] → [Evidence Store]

Privacy boundary (canonical):
Always PRIVATE: numeric bounds, raw measurements, key material, live topology/endpoints, customer-specific data/PII.
