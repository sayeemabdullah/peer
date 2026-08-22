# Field Layer: Clinical Psychology

Covers psychotherapy and intervention research, psychopathology, and
clinical assessment. Inherits the open-science discipline in
`psychology.md`; where an intervention trial is involved, clinical trial
standards in `clinical-biomedical.md` also apply in full.

## Intervention trials

- **Register the trial** (ClinicalTrials.gov, ISRCTN) before enrollment, and
  report under **CONSORT-SPI** (the social and psychological interventions
  extension). Psychotherapy trials are trials; the registration expectation
  is the same as for drugs.
- **Allegiance effects** are among the largest and best-documented biases in
  this literature: trials conducted by the developer of a therapy report
  substantially larger effects. Disclose developer involvement and, where
  possible, design against it (independent assessors, comparison
  interventions delivered by their own proponents).
- **Comparison condition determines the effect size**, and this is where
  most overclaiming happens. Waitlist controls produce inflated effects
  relative to active comparators; treatment-as-usual varies enormously
  across settings. State exactly what the comparison was and what it
  implies — "effective" against a waitlist is a much weaker claim than
  "superior to an active alternative."
- **Blinding**: participants and therapists generally can't be blinded, but
  outcome assessors can and should be. Say which were.
- **Therapist effects**: outcomes vary substantially by therapist. Therapists
  are a clustering variable; ignoring them inflates precision.
- **Treatment fidelity**: was the manual followed? Report adherence and
  competence ratings, not just that a manual existed.

## Outcomes

- **Prespecify the primary outcome.** Outcome switching is well documented in
  this literature — comparing published outcomes against the registration
  is something reviewers now actually do.
- **Clinical significance, not just statistical**: report reliable change
  indices, remission/response rates against established criteria, or
  minimal clinically important differences. A statistically significant
  half-point change on a symptom scale may mean nothing clinically
  (`effect-size-over-significance.md`).
- **Self-report vs. clinician-rated vs. behavioral** measures often diverge;
  report all collected, not the one that moved (Standing Rule 6).
- **Follow-up**: post-treatment gains frequently decay. Report the longest
  follow-up collected, and report differential attrition by arm — dropout in
  psychotherapy trials is high and rarely random.
- **Harms**: adverse events from psychological interventions are
  under-reported. Deterioration rates belong in the results.

## Analysis

- **Intention-to-treat** as the primary analysis, with per-protocol as
  secondary. Completer-only analysis as the primary is a red flag.
- Missing data is substantial in this field; report the mechanism assumed
  and use appropriate methods (multiple imputation, mixed models), not
  last-observation-carried-forward.
- For small trials, an underpowered null is not evidence of equivalence —
  non-inferiority claims require a design specified for them.

## Assessment and measurement

- Use validated instruments with established psychometrics in the population
  studied; validation in one population doesn't transfer automatically.
- Report reliability in *this* sample, not only the value from the original
  validation paper.
- Diagnostic claims require a stated diagnostic procedure (structured
  interview vs. self-report screening vs. chart diagnosis) — these are not
  interchangeable, and screening instruments over-identify cases.
- Measurement invariance matters before comparing scale scores across
  groups; comparing raw scores across cultures or age groups without it can
  measure the instrument rather than the construct.

## Ethics

- Clinical populations are vulnerable; risk protocols for suicidality and
  deterioration must be specified, along with what triggers breaking
  blinding or withdrawing a participant.
- The therapist-researcher dual role creates a coercion concern when the
  treating clinician recruits their own patients.
- Withholding effective treatment requires justification; waitlist designs
  should offer the intervention after the trial.

## Publication norms

- Journals: JCCP, Behaviour Research and Therapy, Psychological Medicine,
  JAMA Psychiatry, Lancet Psychiatry, Clinical Psychological Science.
- Registered Reports are available and well suited to this literature.
- PsyArXiv preprints are accepted; clinical journals vary — check.

## Red flags specific to this field

- Waitlist-controlled result described as demonstrating effectiveness
- Published primary outcome differing from the registered one
- Developer of the therapy conducting the trial with no allegiance
  discussion
- Completer-only analysis with substantial differential dropout
- No harms or deterioration reporting
