# A Verified Past Is Not Authority to Act Now

## Why AI governance must separate evidence, current authority, admission and what actually happened

**Meir Goldman | Founder, FAZON**  
**Version 1.0 | 5 October 2026**

We do this every day.

Someone we trust recommends a doctor, a colleague, a product or an idea. Their recommendation changes what we are willing to consider. That is useful. It is also limited.

Trust can justify attention. It can influence judgment. But it does not automatically give someone authority to decide for us.

Social trust can propagate: A trusts B; B recommends C; A may become more willing to consider C. Authority should not propagate implicitly. The fact that I trust your judgment does not mean the person - or system - you trust may bind me or act for me.

AI systems are increasingly entering the same human pattern, except they can now act. They can send, change, disclose, approve, trigger and transact. At that point the question is no longer only whom or what we trust. It becomes: what exactly is this action resting on, and what authorizes it now?

An AI agent can be right about the facts and still have no authority to act. It can also hold a valid permission and fail to produce the result that permission covered.

Those are different failures. A governance design should make them distinguishable before an external consequence makes the distinction expensive.

Consider a hypothetical business workflow. An assistant prepares a customer-data export. Its proposal was reviewed yesterday. Before the export is sent today, the recipient, the permitted dataset or the governing policy changes. The earlier approval remains part of the record. But what, exactly, does it authorize now?

A successful evaluation, a familiar workflow and a historical approval can all be relevant. None answers that question by itself.

### 1. Evidence and entitlement are different questions

In his essay *Before the Story Decides*, Ricky Jones describes an ordinary message becoming an elaborate interpretation, and then beginning to issue instructions. He separates the basis for believing a story from the justification for acting on it. His conclusion asks: “What is this resting on? And what entitles me to act on it?” [1]

That is a human reflection, not a technical validation result. Its relevance to AI governance is an analogy: a persuasive account can be mistaken for an instruction that already has authority.

For an agent, a plausible explanation of a customer’s needs is not authorization to disclose the customer’s records. Confidence in a recommendation does not establish who may execute it, against which target, with what parameters or for how long.

The two questions should remain separate. What supports the proposal? What authorizes this particular action?

### 2. A historical result does not become a standing permission

Pre-execution authorization is not a new invention. NIST SP 800-207 already describes per-session resource access, dynamic policy, policy-decision and enforcement responsibilities, and grant/deny/revoke decisions. It also describes continual monitoring with possible reauthentication and reauthorization during transactions as defined and enforced by policy. The document does not establish that every possible action must always trigger a fresh network request, nor does it prescribe the episode record proposed here. [2]

For consequential agent workflows, the design question is more specific: which conditions made the earlier permission usable, and do those conditions still hold for the proposed side effect?

A change need not invalidate every previous decision. The relevant issue is materiality. Did the model change affect a behavior on which the permission depended? Did the recipient or dataset move outside the approved scope? Was the authority revoked? Has the validity window closed?

Historical evidence should remain intact. What may expire is permission to rely on it for another action. The past does not become false because it no longer authorizes the present.

### 3. Currentness has to be a rule, not an adjective

“Current” needs an operational meaning: an authoritative source, a permitted age, relevant change events and a rule for what happens when currentness cannot be established.

RFC 9334 makes a related distinction in remote attestation. Freshness is assessed against appraisal policy, and the document acknowledges a race: the attester’s state or appraisal policy may change immediately after evidence is generated. It also permits policy-bounded reuse. Remote attestation is not the same thing as the post-action account discussed below; it supplies an important precedent for treating freshness and reliance explicitly. [3]

A timestamp alone cannot settle whether the action remains authorized. The enforcement point needs a way to bind the decision it consumes to the relevant state and to reject material mismatch under the governing policy.

That does not mean demanding complete knowledge of the world. A bounded action can be authorized under explicit uncertainty. But missing mandatory authorization evidence is different from uncertainty the authorized policy has already accepted. The actor should not silently turn the former into the latter.

### 4. Admission looks forward; attestation looks back

A recent public exchange with Joseph A. Sprute explored two related questions: what independence requires of an admitter, and what an evidence commitment should cover for a nondeterministic model action. Sprute stated that the clarifications would be incorporated into *ERES-AICON-EPISODE v0.2* with named attribution. A v0.2 archive is present in the cited repository commit. This establishes a public exchange and a versioned publication, not validation of FAZON or independent verification of that archive’s implementation. [4]

For this article, **admission** means a decision about what may proceed under specified authority and conditions. **Post-action attestation** means an evidence-backed account of what occurred in the associated episode. It is not automatically a proof merely because somebody calls it an attestation.

Before a side effect, the decision should identify the actor, proposed action, target, material parameters, governing authority and policy, relevant implementation identity, validity conditions and episode identity. An explicitly authorized parameter envelope may be appropriate; an unspecified envelope is not a substitute for binding.

Afterwards, the record should bind the same episode to the actual action, observed result and supporting evidence, including failures, refusals and unresolved outcomes.

This avoids promising deterministic replay where none exists. A model may generate different candidates on different runs. The control obligation is to establish which candidate or bounded envelope was admitted, what was consumed at execution and what was observed afterwards.

If generation changes the actual tool call, target or material parameters, the final side effect still needs to fall within the applicable admission. Approval of an earlier intention is not approval of any later realization.

### 5. Independence is about control, not labels

Putting “actor” and “admitter” in two boxes does not, by itself, separate their authority.

A useful threat-model question is whether the actor can issue its own admission, modify the governing state used to decide it, forge an accepted receipt or reach the side effect through an unmediated route.

The answer depends on credentials, administration rights, enforcement placement and the paths to the target. It is not established simply by using another model, another process or the word “independent.” Nor must every deployment necessarily involve a separate legal organization. The required separation should be stated and demonstrated against the declared threat model.

A further safeguard is to keep the observation path honest. The component proposing or executing an action should not be able to manufacture all the evidence by which its success is judged.

A separate public exchange with Hiro Yokoki surfaced the same implementation seam from another direction. Yokoki replied that binding authorization to execution is essential; that an EXECUTE verdict alone should not be enough; and that the direction he is exploring is an episode-bound decision object carrying the relevant actor, action, target, parameters, authority state, conditions and validity window, to be consumed by the enforcement point before side effects are permitted. He separately distinguishes the post-execution trace from the authorization decision and summarized the distinction as **Selection ≠ Authorization ≠ Enforcement ≠ Evidence**. This is an author-stated design direction, not evidence of a completed implementation or technical equivalence with FAZON. [5]


### 6. Follow the record all the way to the consequence

A permission record answers a permission question. A dispatch record says something about an attempt. An acknowledgement says whatever the receiving system’s acknowledgement contract actually promises. None should silently stand in for all the others.

In the export example, evidence that the request was accepted may not establish that the intended recipient received the intended dataset, or that no other destination was used. The right outcome evidence depends on the target and the precise claim being made.

The same discipline applies to refusal. A record marked BLOCKED does not, by itself, prove that no tool was invoked or that the target did not change. Those are additional claims requiring suitable observation. Absence of an observed effect must not be inflated into proof of absence beyond the observation’s coverage.

A hash can bind an identified set of bytes. It does not establish that the bytes tell the truth, that every relevant event was captured or that the signer had the authority being claimed. Authenticity, completeness, currentness and outcome coverage remain separate questions.

### 7. Review access sets the limits of the review

An evidence object may be reported to exist, preserved, made accessible, inspected or assessed against a claim. These are different states, not interchangeable badges.

Confidentiality can justify withholding raw material. It cannot justify describing a reviewer as having inspected something they did not see. A review should say whether its basis was original evidence, a redacted object, a derived record or another person’s account, and what conclusions that basis supports.

The goal is not maximum disclosure. It is sufficient, appropriately protected evidence for the specific claim. A narrow, inspectable object can support a narrow conclusion. A large manifest does not support conclusions about files that remain unavailable.

### 8. Change should reopen the right question

Guillaume Belisle’s model-migration material emphasizes that replacing a model can disrupt learned workflows even when evaluation scores improve. His proposed migration contract covers behavior changes, affected workflows, monitoring and rollback ownership. [6]

The governance implication I draw is conditional: where a permission or control qualification depends on the changed behavior or identity, continued reliance should be reassessed. Better capability should not silently expand the authorized action scope.

A related distinction applies to decisions not to build. Belisle’s discovery material treats build, improve, defer and stop as legitimate outcomes. [7] A re-entry condition can make a deferral reviewable: what new evidence, ownership, constraint or workflow change would justify considering it again?

Meeting that condition permits reconsideration. It does not automatically authorize implementation. A rollback path, likewise, does not undo every consequence that has already occurred.

### 9. The boundary should enable proportionate action

The objective is not to surround every ordinary decision with an unlimited proof ceremony. It is to prevent evidence, familiarity and persuasive language from becoming undeclared authority.

A proportionate design identifies the consequence, sets the evidence requirements for that action class, defines acceptable uncertainty and makes the authorization boundary enforceable. When required proof is missing, it can hold the consequential action while allowing separately authorized clarification, preparation or review.

This is the problem FAZON works on: permission before AI action becomes consequence. The article states a design position and a discipline of claims. It does not announce a certified implementation, a completed cross-system comparison or a claim of inventing authorization.

Before the next consequential step, ask:

**What supports this decision? What authorizes this action now? What will show what actually happened?**

A verified past is useful evidence. It is not, by itself, authority to act now.

---

### Sources and scope

[1] Ricky Jones, *Before the Story Decides*, LinkedIn, 4 October 2026. Reviewed from ten owner-supplied screenshots of the article. The direct article permalink was not independently retrieved; the short quotation above is visible in the supplied source. This is an essay about human judgment, not a technical control test.

[2] Rose, Borchert, Mitchell and Connelly, *Zero Trust Architecture*, NIST SP 800-207, August 2020, sections 2.1 and 3. https://doi.org/10.6028/NIST.SP.800-207

[3] Birkholz et al., *Remote ATtestation procedureS (RATS) Architecture*, RFC 9334, January 2023, especially sections 5, 8 and 10. https://www.rfc-editor.org/rfc/rfc9334.html

[4] Joseph A. Sprute, public LinkedIn replies to Meir Goldman, 3 October 2026, preserved in supplied screenshots. Repository commit adding *ERES-AICON-EPISODE-2026-001_v0_2_Verified-Episode_RG-DEPOSIT.zip*: https://github.com/ERES-Institute-for-New-Age-Cybernetics/Support-Documentation/commit/cd8b1da9ede244598faf7001afd2160d8cf46c80 . Commit identity and file presence were checked; internal ZIP content and test results were not independently verified for this article. The attribution is the author’s public statement, not an endorsement or joint certification.

[5] Hiro Yokoki, *AI Agents Need a Decision Boundary* / *Λ — Decision Boundary*, public LinkedIn article supplied by the owner, 3 October 2026, plus Yokoki's public reply to Meir Goldman preserved in IMG_5851.png on 4 October 2026. Owner-supplied article URL: https://www.linkedin.com/pulse/ai-agents-need-decision-boundary-hiro-yokoki-npn2c . Yokoki reported DOI 10.5281/zenodo.23121194; the DOI record was not independently retrieved for this article. The reply states a design direction being explored, not a completed implementation or FAZON equivalence.

[6] Guillaume Belisle / Vert AI, *AI Product / Model Change — Migration*, six-page document supplied with the LinkedIn post, pages 1, 4–6. Source file reviewed: 1790896053522.pdf.

[7] Guillaume Belisle / Vert AI, *Discovery Design*, six-page document supplied with the LinkedIn post, pages 4–6. Source file reviewed: 1791017299838.pdf.

The hypothetical workflow and the proposed control requirements are the author’s analysis. References are not endorsements of FAZON. Source status checked on 5 October 2026. Public-source permalinks still to attach are listed in the separate editorial checklist; no link has been invented.
