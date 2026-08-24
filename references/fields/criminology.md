# Field Layer: Criminology & Criminal Justice

Covers crime, policing, courts, corrections, and justice policy evaluation.
Inherits `social-science.md` for identification; the distinctive problem is
that **the primary data is produced by the institutions being studied**, so
official statistics measure enforcement as much as behavior.

## Official data measures enforcement, not crime

- Arrest, stop, and citation records reflect police deployment, discretion,
  and priorities. An increase in recorded offenses can mean more crime, more
  reporting, or more enforcement — and these are frequently conflated.
- **The dark figure of crime**: most offenses are never reported to police,
  and reporting rates vary by offense type, victim characteristics, and
  trust in police. Victimization surveys (NCVS and equivalents) and
  self-report studies capture different slices, each with their own biases.
- Recorded crime series break when definitions, recording practices, or
  systems change. Check for such breaks before interpreting a trend.
- **Racial and geographic disparities in official data** reflect enforcement
  patterns as well as offending. Analyses using arrest as an outcome or as a
  proxy for offending must address this rather than treating arrest as
  neutral measurement.

## Denominators and benchmarks

- Rates require a defensible denominator. Population-based rates for police
  stops assume everyone is equally exposed to police contact, which is false;
  benchmarking against the at-risk population, traffic volume, or
  observational surveys is better and its choice materially changes
  conclusions.
- **The denominator problem in bias research** is genuinely hard and
  contested. Approaches like the veil-of-darkness design, outcome tests, and
  threshold tests each have known limitations — state which was used and
  what it can and cannot establish. Infra-marginality means a simple outcome
  test can mislead.
- Selection into the data affects downstream analyses: studying police use
  of force conditional on a stop conditions on a variable affected by the
  exposure of interest, which introduces collider bias.

## Recidivism and risk

- **Recidivism is a measurement of system contact**, not of offending.
  Re-arrest, reconviction, and reincarceration are different outcomes with
  different meanings; state which and the follow-up period, since rates are
  meaningless without it.
- Time at risk must be accounted for — incarcerated people cannot reoffend
  in the community. Use survival methods with proper exposure time rather
  than fixed-window binary outcomes.
- **Risk assessment instruments** should be evaluated for calibration and
  error-rate balance across groups, not just AUC. Different fairness
  criteria are mathematically incompatible when base rates differ, so state
  which criterion is being used and why (`computational-biomedicine.md`
  covers analogous issues).
- Predictive policing and risk tools trained on enforcement data inherit and
  can amplify its patterns — a feedback loop, not a neutral prediction.

## Evaluating interventions

- Experimental criminology has a strong RCT tradition (policing
  experiments, court diversion, corrections programs). Register trials and
  report per CONSORT.
- **Place-based designs** (hot spots policing) require handling spatial
  spillover — displacement to nearby areas and diffusion of benefits both
  occur, and measuring only treated areas mis-states net effect. Include a
  catchment area analysis.
- Clustered designs need the discipline in `nursing-health-services.md`.
- Implementation fidelity matters: programs delivered by criminal justice
  agencies vary widely in what actually happened.
- Regression to the mean is a serious threat when interventions target areas
  or people selected for unusually high recent rates.

## Ethics

- Incarcerated people are a formally protected population (in the US, 45 CFR
  46 Subpart C) with strict limits on permissible research and on incentives.
- Consent under criminal justice supervision is complicated by the
  perception that participation affects case outcomes; separation from
  decision-makers must be real and stated.
- Confidentiality has limits — disclosure of unreported offenses or intent
  to harm may trigger reporting obligations. Certificates of Confidentiality
  provide some protection and should be sought where applicable; the limits
  must be disclosed in consent.
- Research can be used to justify expansion of enforcement; consider and
  state the likely uses of findings.

## Publication norms

- Journals: Criminology, Journal of Quantitative Criminology, Journal of
  Research in Crime and Delinquency, Justice Quarterly, Criminology & Public
  Policy.
- Registered Reports and preregistration are growing but not yet standard.
- Administrative data agreements often restrict data sharing; state
  restrictions and share code where data cannot be shared.

## Red flags specific to this field

- Arrest data used as a measure of offending with no discussion of
  enforcement
- Recidivism reported without specifying the outcome or follow-up period
- Stop or force rates benchmarked against residential population alone
- Use-of-force analysis conditioned on stops with no collider discussion
- Hot-spot intervention evaluated with no displacement analysis
