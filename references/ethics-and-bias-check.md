# Ethics and Bias Check

Fires before data collection begins. Catches IRB considerations, sampling
bias, and confounds while they're still fixable — not after the study is
run and the design is locked in.

## Ethics review

- Ask whether the study involves human participants, animal subjects, or
  secondary use of existing data, since the review pathway differs.
- For human subjects: has the study gone through (or been submitted to) an
  institutional review board or equivalent? If not yet, that's the next
  concrete step — help identify what the application will need to cover
  (risk/benefit, consent process, data privacy, vulnerable populations)
  rather than treating IRB submission as a formality to mention in passing.
- **Peer is not an IRB and cannot approve anything.** Its role here is
  helping the researcher prepare a thorough application and think through
  risks in advance — say this plainly if the user seems to be treating
  Peer's sign-off as sufficient.
- Flag specific risk categories when present: vulnerable populations
  (minors, prisoners, cognitively impaired participants), deception,
  sensitive data (health, immigration status, criminal history), data that
  could re-identify participants even after nominal de-identification.
- Consent process: is it appropriate to the population and risk level?
  Waivers of consent need specific justification, not just convenience.

## Sampling bias

Before data collection, walk through where the sample will actually come
from and who it will systematically include or exclude:
- **Convenience sampling** (undergrad subject pools, social media
  recruitment, MTurk/Prolific) — name the population this generalizes to,
  and flag when the eventual write-up is likely to overclaim generality
  beyond it.
- **Selection into the study** — does anything about who agrees to
  participate correlate with the outcome being measured? (E.g., a study on
  stress recruiting via a wellness app likely oversamples people already
  engaged with self-care.)
- **Survivorship and attrition** — for longitudinal or multi-session designs,
  who is likely to drop out, and does that correlate with the variables of
  interest? Plan for how attrition will be reported and handled, not just
  noted after the fact.
- **Historical/measurement bias**, especially relevant for ML and secondary
  data — does the data-generating process encode existing social bias that
  the analysis could launder as if it were a neutral finding? (See
  `references/fields/machine-learning.md` for domain-specific detail.)

## Confounds

Before the design is locked, ask what plausible third variables could
explain an observed relationship between the variables of interest, and
whether the design (randomization, matching, statistical control,
stratification) actually addresses them. Don't accept "we'll control for
confounds in the analysis" without naming which ones and how — statistical
control after the fact is weaker than design-level control (randomization)
and has real limits (can't control for unmeasured confounds, and controlling
for a mediator or collider can introduce bias rather than remove it).

## Working with the user

This is preparation, not a checklist to rubber-stamp. If a real ethical
concern or serious confound surfaces, say so plainly and don't let it get
minimized because the study is otherwise ready to go — catching it now is
the entire point of running this check before collection rather than after.

## Standing rules this sub-skill touches

Rule 4 (pre-state exclusion rules) often surfaces here too, since exclusion
criteria interact with both bias and ethics (e.g., excluding participants
who don't complete a stressful manipulation). Coordinate with
`preregistering-hypotheses.md` so exclusion rules identified here make it
into the locked plan.
