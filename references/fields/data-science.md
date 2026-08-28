# Field Layer: Data Science

Covers applied analysis of observational and operational data: business
analytics, computational pipelines over existing datasets, predictive
modeling in deployment settings, and A/B testing.

The defining feature is that the data usually **wasn't collected for the
question being asked**. That single fact drives most of what follows.

## Data leakage is the first thing to check

Leakage — information from the target or the future entering the features —
produces excellent validation results and useless deployed models. Check
specifically:
- **Temporal leakage**: are features computed using information unavailable
  at prediction time? Any random train/test split on time-ordered data is
  suspect; time-based splits are usually required.
- **Group leakage**: do rows from the same entity (patient, customer,
  session) appear in both train and test? Split by entity, not by row.
- **Target leakage**: is a feature a proxy for the outcome (a field
  populated only after the event, a downstream system's decision)?
- **Preprocessing leakage**: were scaling, imputation, feature selection, or
  resampling fit on the full dataset before splitting? These must be fit on
  training data only, inside the cross-validation loop.

An implausibly high metric is more often leakage than a breakthrough.
Say so directly.

## Observational data pitfalls

- **Selection into the dataset**: who or what is missing? Operational data
  records the population the system already reached, not the target
  population.
- **Confounding**: an association in observational data supports a
  predictive claim, not a causal one. If a causal claim is being made, ask
  for the identification strategy (see `social-science.md`) — "we controlled
  for the obvious confounders in a regression" is weak.
- **Simpson's paradox and aggregation**: check whether the aggregate
  relationship holds within relevant subgroups; reversals are common in
  observational data.
- **Survivorship**: entities that churned, failed, or dropped out are often
  absent from the data by construction.
- **Missingness**: is it missing at random, or does missingness itself carry
  signal? Imputation that assumes MAR when data is missing-not-at-random
  introduces bias rather than removing it.

## A/B tests and experiments

When the work includes a real experiment, the standard disciplines apply
fully — a preregistered primary metric, a stopping rule, and a sample size
justified in advance (`preregistering-hypotheses.md`, `power-analysis.md`).
Field-specific concerns:
- **Peeking**: continuously monitoring an experiment and stopping at
  significance inflates false positives badly. Use sequential testing
  designed for it, or a fixed horizon.
- **Multiple metrics**: with a metrics dashboard, something is always
  significant. Designate the primary metric in advance and correct across
  the rest (`avoiding-p-hacking.md`).
- **Interference**: units affected by other units' treatment (marketplaces,
  social features, shared inventory) violate independence and bias the
  estimate; cluster or switchback designs may be needed.
- **Novelty and primacy effects**: short-horizon results may not persist.

## Reporting a predictive model

- Metrics appropriate to class balance — accuracy on imbalanced data is
  misleading; report precision/recall, PR-AUC, or calibration.
- Calibration, not just discrimination, when probabilities will be acted on.
- Performance on the deployment population, not just a random holdout, and
  a plan for monitoring dataset shift over time.
- A baseline that reflects the status quo (current rule, current process),
  not just a null model — beating a trivial baseline is not evidence of
  usefulness.

## Ethics

- Secondary use of operational or personal data often still requires review
  and may exceed the consent under which it was collected.
- Re-identification risk in "anonymized" data is real, especially with
  location, timestamps, or rare attribute combinations.
- Models acting on people should be checked for subgroup performance
  disparities, not only aggregate accuracy (`ethics-and-bias-check.md`).

## Red flags

- A random split on time-series data
- Preprocessing fit before the train/test split
- A causal claim ("X drives Y") from an observational pipeline
- A dashboard-derived finding with no correction for how many metrics were
  examined
- Model performance reported without a status-quo baseline
