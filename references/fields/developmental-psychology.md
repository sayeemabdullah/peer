# Field Layer: Developmental Psychology

Covers infant, child, and lifespan development research. Inherits
`psychology.md`; the distinctive concerns are **age as a variable that
can't be manipulated**, **longitudinal designs**, and **research with
participants who cannot consent for themselves**.

## Age, cohort, and time are confounded

- **Cross-sectional age comparisons** confound age with cohort: 8-year-olds
  and 16-year-olds today differ in birth year, schooling, and technology
  exposure, not only developmental stage. State this rather than describing
  cross-sectional differences as developmental change.
- **Longitudinal designs** confound age with time of measurement (period
  effects) — a change observed across a period that included a pandemic or
  a curriculum reform isn't purely maturational.
- Age, period, and cohort effects cannot all be separated without additional
  assumptions; accelerated longitudinal or sequential designs help but
  don't fully resolve it. Say which effects the design can and cannot
  distinguish.
- Age is often better treated as continuous than as arbitrary groups;
  median-splitting age discards information and can create apparent
  discontinuities.

## Longitudinal specifics

- **Attrition is the central threat**, and it is systematically related to
  SES, family stability, and often to the outcomes themselves. Report
  attrition, compare retained vs. lost participants on baseline variables,
  and use methods appropriate to the missingness mechanism (FIML, multiple
  imputation) rather than listwise deletion.
- **Measurement invariance across ages** is required before comparing scores
  over time — the same instrument may measure a different construct at 4
  and at 12. Comparing raw scores without testing invariance can measure
  instrument drift rather than development.
- Practice effects from repeated testing masquerade as developmental gains;
  use alternate forms or model the effect.
- Distinguish within-person change from between-person differences —
  cross-sectional correlations don't license within-person claims. Models
  that separate them (latent growth curves, random-intercept cross-lagged
  panel models) address this; the standard cross-lagged panel model
  conflates them.

## Infant research

- Sample sizes are small and attrition/exclusion rates high (fussiness,
  looking-time criteria, session failure). **Pre-state exclusion rules** and
  report exclusions by condition — post-hoc exclusion decisions are a
  serious risk here (Standing Rule 4).
- Looking-time and habituation paradigms have been the subject of major
  replication efforts with mixed results; single-lab findings from these
  paradigms warrant caution (`replication-check.md`).
- Coder blinding to condition and inter-rater reliability on a substantial
  subsample should be reported for any behavioral coding.
- Multi-lab collaborations (ManyBabies and similar) provide better-powered
  estimates than single-lab studies; cite them in preference to a single
  small study where available (Standing Rule 5).

## Consent and ethics

- **Parental/guardian permission plus child assent** — assent procedures
  should be age-appropriate and described. Children must be able to decline
  and to stop, and the procedure for honoring that should be stated.
- IRB review of research with children is more stringent; risk categories
  and the permissible-risk framework (in the US, 45 CFR 46 Subpart D) apply.
- Mandatory reporting obligations for disclosed abuse or neglect must be
  disclosed in consent materials.
- Compensation should not be so large as to unduly influence parents.
- School-based research needs institutional permission alongside IRB, and
  educational privacy law applies (`computer-science-education.md`).

## Sampling and generalizability

- Developmental samples are heavily WEIRD and often skewed toward
  higher-SES, university-adjacent families. State the sample's composition
  and don't generalize to "children" without qualification.
- Report SES, race/ethnicity, and language background; developmental
  trajectories differ across these, and omitting them prevents readers from
  judging applicability.

## Publication norms

- Journals: Child Development, Developmental Psychology, Developmental
  Science, Infancy, JECP.
- PsyArXiv preprints standard; Registered Reports available and well suited
  to small-N infant work.
- Data and video-coding protocols increasingly shared (Databrary for video,
  with its own consent requirements).

## Red flags specific to this field

- Cross-sectional age differences described as developmental change
- Attrition unreported, or retained/lost participants not compared
- Infant exclusion criteria appearing only in the results
- Scores compared across ages with no measurement invariance testing
- Assent procedure not described for school-age participants
