# Field Layer: Economics

Covers applied microeconomics, development economics, macroeconomics, and
econometric work. `social-science.md` covers the shared identification
discipline; this file covers economics-specific norms, which are distinctive
enough to matter — the field has its own conventions on inference,
replication, and publication that differ from neighboring disciplines.

## Identification is the paper

In applied economics, the credibility of the identification strategy *is*
the contribution. Expect and require:
- An explicit statement of the source of variation being exploited, and why
  it is plausibly exogenous.
- The assumptions the strategy requires, stated formally, with tests or
  supporting evidence where testable:
  - **IV**: relevance (first-stage F, and awareness that weak instruments
    bias toward OLS and break conventional inference), exclusion
    restriction (untestable — must be argued substantively, not asserted),
    monotonicity for LATE interpretation.
  - **DiD**: parallel pre-trends shown over multiple periods, not asserted.
    With staggered adoption and heterogeneous effects, two-way fixed effects
    is biased — use one of the modern estimators (Callaway–Sant'Anna,
    Sun–Abraham, de Chaisemartin–D'Haultfœuille) and say which.
  - **RDD**: continuity at the cutoff, density test for manipulation
    (McCrary), bandwidth sensitivity, and covariate balance.
  - **Matching/selection on observables**: the weakest of these; requires
    an argument that all relevant confounders are observed, which is rarely
    credible on its own.
- **What is being estimated**: ATE, ATT, or LATE for a specific complier
  subpopulation. LATE from an IV applies to compliers, who may be
  unrepresentative — policy claims that ignore this overreach.

## Inference

- **Cluster standard errors at the level of treatment assignment.** Too few
  clusters (roughly under 40) makes cluster-robust inference unreliable —
  use wild cluster bootstrap or randomization inference and say so.
- Report robustness across specifications, but distinguish a genuine
  robustness check from specification search. A specification curve or a
  clearly pre-specified primary specification with secondary variants is
  transparent; reporting only the specification that worked is p-hacking
  (`avoiding-p-hacking.md`).
- Multiple hypothesis testing across many outcomes needs correction
  (Romano–Wolf, FDR) — increasingly expected, especially in field
  experiments with many measured outcomes.
- Report economic magnitude alongside statistical significance: effect
  relative to the control mean, in interpretable units. Statistical
  significance without economic significance is not a finding
  (`effect-size-over-significance.md`).

## Field experiments and RCTs

- **Register in advance** (AEA RCT Registry) with a pre-analysis plan.
  PAPs are well established here, and deviations from them should be
  reported explicitly rather than silently absorbed.
- Report attrition by arm, balance on baseline covariates, and take-up/
  compliance rates. Distinguish ITT from ToT/LATE estimates.
- Spillovers between treatment and control violate SUTVA and are common in
  village- or school-level interventions; address the design's handling.
- Report cost-effectiveness where a policy recommendation follows.

## Structural and macro work

- State the model's assumptions and which results depend on which
  assumptions. Calibration sources should be given for every parameter.
- Report sensitivity to key parameters; results shown at one calibration are
  not characterized.
- Distinguish what the model demonstrates internally from what it
  establishes about the world — a calibrated model matching moments is
  consistent with the data, not validated by it.
- External validity of structural estimates outside the estimation sample
  should be argued, not assumed.

## Replication and data

- **Data and code deposit is mandatory** at the AEA journals and most major
  economics journals, verified before publication by a data editor. Plan
  the replication package from the start: raw data (or access instructions
  for restricted data), cleaning code, analysis code, and a README mapping
  code to every table and figure.
- Restricted-access data is common and acceptable, but the access pathway
  must be documented so others can obtain it.

## Publication norms

- Working papers (NBER, CEPR, IZA, SSRN) circulate long before publication
  and are the field's primary early dissemination — this is normal, not
  preprint-averse behavior.
- Review is slow and revision rounds are long; journal hierarchy is steep
  and matters for career purposes more than in many fields
  (`submission-strategy.md`).
- Referee reports in economics are typically long and demanding; expect
  substantial requested additions rather than minor revisions
  (`receiving-peer-review.md`).

## Red flags

- An exclusion restriction asserted rather than argued
- Two-way fixed effects with staggered treatment timing and no modern
  estimator
- Few clusters with conventional cluster-robust standard errors
- Many outcomes tested, significant ones highlighted, no correction
- Statistical significance reported with no magnitude relative to the
  control mean
