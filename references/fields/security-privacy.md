# Field Layer: Security & Privacy

Covers systems security, cryptography engineering, privacy-enhancing
technologies, and measurement of real-world security. The distinctive
feature: claims are made against an **adversary**, so a result is only
meaningful relative to a stated threat model — and much of the research
process itself carries ethical weight absent from other fields.

## The threat model is the claim

- State it explicitly and before the evaluation: adversary capabilities,
  knowledge, access, and goals; what is trusted; what is out of scope.
  A defense "works" only against the adversary it was specified against.
- **Evaluate against an adaptive adversary**, not a fixed one. A defense
  tested only against existing attacks tells you little, because a real
  attacker adapts. This is the field's most common evaluation failure,
  particularly in adversarial ML, where a long series of defenses were
  broken shortly after publication by adaptive attacks.
- Security claims should say what an attacker must do to break the system,
  ideally reduced to a well-studied hard problem or a stated assumption.
- Beware unfalsifiable claims. "More secure" without a threat model and a
  metric is not a result.

## Cryptographic work

- Distinguish a **proof in a model** (random oracle, standard model, ideal
  cipher) from practical security; state the model and the assumptions.
- Concrete security parameters and the reduction's tightness matter — a
  loose reduction may provide no meaningful guarantee at real parameter
  sizes.
- **Do not roll your own primitives** or present a new construction without
  substantial analysis; novelty in cryptography carries a burden of proof,
  and reviewers apply it.
- Implementation security is separate from design security: constant-time
  behavior, side channels, and key management are where deployed systems
  actually fail.

## Attack papers

- Demonstrate the attack on real systems or realistic conditions, and state
  the assumptions required (physical access, adjacency, a foothold, user
  interaction). Attacks requiring implausible preconditions should say so.
- Report success rate across trials and conditions, not a single successful
  demonstration.
- **Responsible disclosure is expected**: notify affected vendors before
  publication, allow a reasonable remediation window, and state the
  disclosure timeline in the paper. Publishing an unpatched vulnerability
  without disclosure is an ethics violation at most venues and can be
  grounds for rejection.
- Consider harm from the artifact itself — releasing a weaponized exploit
  differs from releasing a proof of concept, and the release decision should
  be reasoned about explicitly.

## Measurement studies

Internet-scale measurement raises ethics questions that don't arise
elsewhere:
- Scanning, probing, and crawling can disrupt the systems measured. Use
  opt-out mechanisms, rate limiting, informative reverse DNS and abuse
  contacts, and minimize scope.
- Data about people obtained by measurement (traffic, leaked credential
  dumps, dark web scrapes) requires IRB review; "the data was already
  public" or "already leaked" does not remove the obligation. Using leaked
  data can also re-victimize the people in it — justify it or don't use it.
- Deception or non-consensual involvement of users needs strong
  justification and review.
- Report the ethics review outcome; major venues now expect an explicit
  ethics section, and reviewers weight it.

## Usable security

Studies of how people handle security are human-subjects research and follow
`human-computer-interaction.md`. Specific to this area:
- Security is a secondary task — studies where the security behavior is the
  stated task produce unrealistically attentive participants. Role-playing
  or deception designs are often necessary, with the ethics handled
  accordingly.
- Self-reported security behavior diverges substantially from actual
  behavior; prefer behavioral measures.
- Recruiting only technically sophisticated participants limits
  generalization sharply.

## Evaluation and reproducibility

- Report the exact software versions, configurations, and datasets — a
  vulnerability or defense is version-specific.
- Performance overhead of a defense belongs alongside its security benefit;
  a defense nobody will deploy because of cost is a different contribution.
- Artifact evaluation is established at the major venues.

## Publication norms

- The "big four" conferences (IEEE S&P, USENIX Security, ACM CCS, NDSS) are
  primary; journals are secondary. Crypto work goes to CRYPTO/EUROCRYPT and
  the IACR ePrint archive.
- IACR ePrint is the standard preprint venue for cryptography; arXiv for
  systems security. Check anonymity policies during review.
- CVE assignment and coordinated disclosure are part of the publication
  process for vulnerability work.

## Red flags

- A defense evaluated only against static, pre-existing attacks
- Security claimed with no explicit threat model
- A vulnerability published with no disclosure timeline
- Measurement of human data justified by "it was already public"
- A new cryptographic primitive proposed with no security analysis
