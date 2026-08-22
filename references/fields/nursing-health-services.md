# Field Layer: Nursing & Health Services Research

Covers nursing research, health services delivery, implementation science,
quality improvement, and health policy evaluation. The characteristic
feature: interventions are **complex, multi-component, and delivered in
real organizations**, so clean randomization is often impossible and
context is part of the finding rather than noise to control away.

## Complex interventions

- A complex intervention has multiple interacting components, requires
  behavior change from staff or patients, and is delivered across
  organizational levels. Evaluating it as if it were a drug misses how it
  works.
- **Describe the intervention well enough to replicate it** — this is the
  field's most common reporting failure. Use **TIDieR**: what, who
  delivered it, how, where, when, how much, tailoring, and modifications.
- **Fidelity**: was the intervention delivered as intended? Report fidelity
  measurement. A null result with unmeasured fidelity cannot distinguish an
  ineffective intervention from one that wasn't actually delivered — an
  implementation failure and a theory failure look identical without it.
- The MRC framework for developing and evaluating complex interventions is
  the standard reference for design.

## Clustering is the default, not the exception

- Patients are nested in nurses, wards, units, hospitals, and regions.
  Interventions are usually delivered at the cluster level.
- **Cluster randomized trials** need the ICC (intracluster correlation
  coefficient) in the sample size calculation — ignoring clustering
  drastically underestimates the required N, and analyzing clustered data
  as independent produces false positives. Report the ICC used and its
  source, and the achieved ICC.
- **Stepped-wedge designs** are common where withholding an intervention is
  not acceptable; they require correct handling of secular time trends,
  which are confounded with the rollout by design. Report the analysis
  model, not just the design name.
- Cluster-level consent and the risk of recruitment bias after cluster
  allocation (identifying patients differently once staff know their arm)
  need addressing.

## Quality improvement vs. research

- QI work uses different methods (PDSA cycles, run charts, statistical
  process control) and reports under **SQUIRE 2.0**, not CONSORT.
- Run charts and SPC charts have their own rules for identifying signals —
  a shift in a run chart is not established by eyeballing it.
- QI projects may be classified as practice rather than research, but that
  determination belongs to the IRB. Publishing QI work generally requires
  addressing this explicitly, and journals ask.
- Don't let a QI project be reframed as a controlled trial in the write-up;
  the design didn't support the causal claim and reviewers will see it.

## Observational health services work

- Administrative and claims data record billing, not clinical reality;
  coding practices vary by institution and change over time. See
  **RECORD** (a STROBE extension) for reporting routinely-collected data.
- Confounding by indication is central: sicker patients get more
  intervention. Address it with an identification strategy, not just
  regression adjustment (`epidemiology-public-health.md`).
- Risk adjustment models used for comparing providers should be checked for
  whether they adjust away the disparity being studied.

## Mixed methods

Much of this field genuinely mixes methods, and the qualitative component
should meet qualitative standards, not be treated as decoration.
- State the mixed-methods design (convergent, explanatory sequential,
  exploratory sequential) and how the strands are integrated — "we also did
  interviews" is not integration.
- See `qualitative-research.md` for rigor markers; **COREQ** or **SRQR**
  for reporting.
- **Implementation outcomes** (acceptability, feasibility, adoption,
  fidelity, cost, sustainability) are distinct from clinical effectiveness
  outcomes; frameworks like RE-AIM and CFIR structure this. Hybrid
  effectiveness-implementation designs evaluate both, and stating which
  hybrid type is used clarifies what the study is powered for.

## Ethics

- IRB review applies; patients in care settings are a vulnerable population
  because declining can feel like it affects their care.
- Staff as research subjects — when nurses or clinicians are studied,
  employment relationships create the same coercion concern.
- Health data privacy (HIPAA, GDPR) applies to record-based work.

## Publication norms

- Journals: Implementation Science, BMJ Quality & Safety, Health Services
  Research, Medical Care, JAN, Nursing Research.
- Trial registration is expected for cluster trials and stepped-wedge
  designs, as for any trial.
- Protocol publication is common and encouraged in this field.

## Red flags specific to this field

- Cluster-delivered intervention analyzed at the individual level
- Intervention described too vaguely to replicate
- A null result with no fidelity data
- A QI project written up as though it were a controlled trial
- Qualitative strand with no stated analysis method
