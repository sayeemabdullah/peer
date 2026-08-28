# Field Layer: Industrial-Organizational Psychology

Covers workplace research: selection and assessment, job performance,
leadership, employee wellbeing, and organizational behavior. Inherits
`psychology.md`; the distinctive concerns are **self-report measurement**,
**nesting within organizations**, and **restricted access to field data**.

## Common method variance

The field's signature measurement problem: when the predictor and the
outcome both come from the same person, on the same survey, at the same
time, the correlation between them is inflated by shared method rather than
shared construct.
- Ask directly whether predictor and criterion came from the same source.
  If so, the correlation is an upper bound on the true relationship.
- Mitigations to look for: temporal separation between measurements,
  different sources (supervisor ratings of performance, objective records),
  psychological separation, or marker-variable designs.
- Post-hoc statistical remedies (Harman's single-factor test in particular)
  are weak and do not establish the absence of the problem — citing one is
  not a fix, and reviewers who know the literature will say so.

## Nesting and levels of analysis

- Employees are nested in teams, supervisors, units, and organizations.
  Analyzing them as independent understates standard errors.
- **State the level of theory, measurement, and analysis, and keep them
  aligned.** Aggregating individual responses to a team-level construct
  requires justification: report ICC(1), ICC(2), and r_wg to show agreement
  supports treating it as a shared property. Aggregating without this is a
  frequent and serious error.
- Cross-level hypotheses (team climate predicting individual outcomes)
  require multilevel models, not aggregated or disaggregated single-level
  regressions.

## Measurement

- Use validated scales with established psychometrics; report reliability in
  this sample, not just from the original validation.
- **Construct proliferation** is a known problem — many scales measure
  nearly the same thing under different labels. Check discriminant validity
  against related constructs rather than assuming a new label denotes a new
  construct.
- **Measurement invariance** before comparing scores across groups,
  cultures, or time. Cross-national comparisons without it are common and
  unsupportable.
- Performance criteria are frequently subjective supervisor ratings, which
  carry known biases (halo, leniency, similarity). State how performance was
  measured and its limitations.

## Causal claims from field data

- Cross-sectional survey data supports association. Causal language
  ("leadership improves engagement") requires more — see
  `social-science.md` on identification.
- Two-wave panel designs are better than cross-sectional but don't resolve
  reverse causality on their own; the interval between waves should be
  theoretically justified rather than driven by convenience.
- Field experiments and natural experiments are the strongest available
  designs here and are increasingly expected for causal claims.

## Selection and assessment work

- **Range restriction and criterion unreliability** attenuate observed
  validity coefficients; corrections are standard but must be reported
  transparently, including the artifact values used and the corrected and
  uncorrected estimates.
- **Adverse impact** analysis belongs alongside validity for any selection
  procedure — subgroup differences and their legal/ethical implications
  (in the US, the Uniform Guidelines) are part of the evaluation, not a
  separate concern.
- Validity generalization and meta-analytic estimates in this field have
  been subject to significant methodological re-examination; treat older
  meta-analytic corrected estimates as contested rather than settled.

## Access, ethics, and incentives

- **Employees are not free agents in a workplace study**: participation
  requested by an employer carries implicit pressure. Anonymity from
  management, voluntary participation, and no employment consequence must be
  real and stated.
- Data ownership and publication rights should be settled with the
  organization before collection — organizations sometimes suppress
  unfavorable findings, which is a publication-bias mechanism specific to
  this field. Disclose any restrictions.
- Sponsored research and consulting relationships require disclosure.

## Publication norms

- Journals: Journal of Applied Psychology, Personnel Psychology, Academy of
  Management Journal, Journal of Organizational Behavior, JOOP.
- Preprints less established than in other psychology subfields but growing;
  check journal policy.
- Data sharing is constrained by organizational confidentiality — describe
  what can be shared and why the rest can't.

## Red flags

- Predictor and outcome from the same self-report survey, with CMV
  addressed only by a Harman's test
- Individual responses aggregated to team level with no agreement statistics
- Causal language from cross-sectional survey data
- Corrected validity coefficients reported without the uncorrected values
- Employer-sponsored study with no statement on publication rights
