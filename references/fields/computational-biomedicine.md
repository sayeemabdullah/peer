# Field Layer: Computational Biomedicine

Covers clinical prediction models, medical imaging analysis, clinical
decision support, and computational methods applied to patient data. Sits
between machine learning and clinical research, and **must satisfy both**:
technical validity and clinical validity are different bars, and passing one
is routinely presented as passing the other.

## Technical validation is not clinical validation

- **Technical**: the model achieves AUC 0.89 on a held-out test set.
- **Clinical**: using the model changes patient outcomes, or would change a
  decision a clinician actually makes.

A strong AUC supports the first claim only. Deployment-readiness or clinical
utility claims require prospective evaluation, ideally a trial. Name the
substitution when it happens — it is this field's central overclaim.

## External validation is the key question

- Was the model validated on data from a **different site, scanner, era, or
  population**? Internal cross-validation on a single institution's data
  systematically overestimates performance, often by a large margin.
- **Dataset shift** is the norm, not the exception: patient mix, coding
  practice, scanner vendor, lab assay, and care protocols all vary across
  sites and drift over time.
- Temporal validation (train on earlier data, test on later) is a minimum
  for anything intended for deployment; random splits over a time-spanning
  dataset leak future information (`data-science.md`).
- Patient-level splits, never image-level or record-level, when a patient
  contributes multiple samples. This leak is common in imaging work and
  inflates results substantially.

## Metrics that match clinical use

- AUC is insensitive to prevalence and to the operating point clinicians
  would actually use. Report sensitivity and specificity at a **prespecified
  clinically justified threshold**, plus PPV/NPV at realistic prevalence —
  a model with excellent AUC can have unusable PPV in a low-prevalence
  screening setting.
- **Calibration is required**, not optional, when outputs will inform
  decisions: report a calibration plot and a measure of calibration, not
  just discrimination. A discriminating but miscalibrated model gives
  misleading risk estimates.
- Decision-curve analysis or an explicit cost/benefit framing communicates
  clinical usefulness better than accuracy alone, given the asymmetry
  between false negatives and false positives in most clinical contexts.
- Compare against the **existing clinical standard** — the current risk
  score, guideline, or clinician judgment — not against a trivial baseline.

## Reporting standards

- **TRIPOD+AI** for prediction model studies is the governing standard;
  **CLAIM** for medical imaging AI; **DECIDE-AI** for early clinical
  evaluation; **CONSORT-AI** and **SPIRIT-AI** for trials of AI
  interventions. Use the one matching the study stage rather than a generic
  ML reporting format.
- **PROBAST** is used by reviewers to assess risk of bias in prediction
  model studies — reading it while designing the study prevents predictable
  criticism.
- Report the full data pipeline: inclusion/exclusion at the patient level
  with a flow diagram, handling of missing data (very common in clinical
  data, and rarely missing at random), and outcome definition/ascertainment.

## Ethics, bias, and governance

- IRB approval and a data use agreement are required; retrospective chart
  review still requires review.
- **Subgroup performance** by age, sex, race/ethnicity, and site should be
  reported. Models trained on non-representative cohorts underperform for
  underrepresented groups, and aggregate metrics conceal it. Note that
  race-based inputs require particular care: race is a social construct
  serving as a proxy for exposure and access, and hard-coding it can
  entrench disparities.
- Label bias: outcomes derived from care processes (who got tested, who was
  diagnosed, cost as a proxy for need) encode access inequities into the
  target variable itself.
- Clinical decision support tools may meet the regulatory definition of a
  medical device (FDA SaMD, EU MDR) — flag when claims cross that line.

## Publication norms

- Venues: clinical journals (JAMA-family, Lancet Digital Health, NEJM AI),
  informatics journals (JAMIA, Nature Medicine, Nature Digital Medicine),
  and technical venues (MICCAI, MLHC, CHIL).
- Clinical journals expect clinical reporting standards and generally
  require trial registration for prospective studies.
- Code and model sharing is expected where patient privacy allows; data
  usually cannot be shared, so a clear description and a synthetic or
  restricted-access pathway matters more.

## Red flags

- Internal cross-validation only, with deployment language in the abstract
- Random split on data spanning years, or splitting by image rather than
  patient
- AUC reported with no calibration and no threshold-based metrics
- No comparison against the existing clinical risk score or standard of care
- Aggregate performance with no subgroup breakdown
