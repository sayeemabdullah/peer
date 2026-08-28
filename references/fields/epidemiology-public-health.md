# Field Layer: Epidemiology & Public Health

Covers observational studies of disease and health in populations,
surveillance, outbreak investigation, and population-level interventions.
Shares clinical reporting norms with `clinical-biomedical.md`; the
distinctive concern here is **causal inference from observational data at
population scale**.

## Study design determines what can be claimed

- **Cohort**: incidence and relative risk; vulnerable to loss to follow-up
  and time-varying confounding.
- **Case-control**: odds ratios; control selection is the critical design
  decision and the most common source of bias. Controls must come from the
  population that would have become cases.
- **Cross-sectional**: prevalence and association only. Temporality is
  unestablished, so causal language is not supportable.
- **Ecological**: group-level associations. The **ecological fallacy** —
  inferring individual-level relationships from group-level data — is the
  characteristic error; name it directly when a population-level correlation
  is used to make an individual-level claim.

## Bias taxonomy — name the specific one

Vague "there may be bias" is not useful. Identify which:
- **Selection bias**: differential participation or loss to follow-up
  related to both exposure and outcome. Collider stratification bias
  (including conditioning on a common effect) belongs here and is subtle.
- **Information/misclassification bias**: differential misclassification
  biases in unpredictable directions; non-differential misclassification of
  a binary exposure typically biases toward the null, which matters when a
  null result is being interpreted.
- **Recall bias**: cases remember exposures differently than controls — a
  structural problem in retrospective case-control designs.
- **Immortal time bias**: a period during which the outcome could not occur
  is misallocated to the exposed group. Common in pharmacoepidemiology and
  easy to miss.
- **Healthy worker / healthy user effect**: people who receive an
  intervention differ systematically from those who don't.
- **Confounding by indication**: the reason for treatment is itself
  associated with the outcome. The central threat in observational studies
  of treatment effects.

## Confounding control

- State the assumed causal structure — a DAG makes explicit which variables
  should and should not be adjusted for, and is increasingly expected.
- **Do not adjust for mediators** (blocks the effect being estimated) or
  **colliders** (introduces bias). "Adjusting for everything available" is
  not conservative; it can create bias where none existed.
- Report the E-value or another quantitative bias analysis for the strength
  of unmeasured confounding that would explain the finding — this is far
  more informative than asserting that residual confounding "cannot be
  excluded."
- Where the design allows, methods with clearer identification (instrumental
  variables, difference-in-differences, regression discontinuity, negative
  controls, target trial emulation) are stronger than regression adjustment.

## Reporting standards

- **STROBE** for observational studies, with extensions (STROBE-MER for
  Mendelian randomization, RECORD for routinely-collected health data).
- **PRISMA** for systematic reviews; **MOOSE** for meta-analyses of
  observational studies.
- **GATHER** for global health estimates.
- Report absolute risks alongside relative measures. A doubled relative risk
  on a rare outcome is a small absolute change, and reporting only the
  relative measure systematically overstates public health importance —
  this is Standing Rule 3 in its epidemiological form.
- Number needed to treat/harm where an intervention is involved.

## Ethics and public health specifics

- IRB review applies; some outbreak investigation and routine surveillance
  is classified as public health practice rather than research, but that
  determination belongs to the authority, not the researcher.
- Small-cell suppression and disclosure control matter when reporting by
  geography and demographics — combinations can re-identify individuals.
- Findings can drive policy quickly, so overclaiming carries direct public
  cost. Scope conclusions to the evidence (Standing Rule 7).

## Publication norms

- Journals dominate: AJE, IJE, Epidemiology, Lancet Public Health, and
  clinical journals for intervention studies.
- Preprints (medRxiv) are standard, with the caveat that unreviewed findings
  with public health implications can be acted on before review — weigh
  this deliberately (`submission-strategy.md`).
- Protocol registration is expected for prospective studies and increasingly
  encouraged for observational analyses of existing data, precisely because
  analytic flexibility is so large.

## Red flags

- Causal language from a cross-sectional design
- Group-level association applied to individuals
- Adjustment sets chosen by stepwise selection rather than a causal model
- Relative risk reported with no absolute risk
- Residual confounding acknowledged in one sentence and then ignored in the
  conclusion
