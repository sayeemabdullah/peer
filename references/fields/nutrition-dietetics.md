# Field Layer: Nutrition & Dietetics

Covers nutritional epidemiology, dietary intervention trials, and human
nutrition research. Inherits `epidemiology-public-health.md` for
observational work; the distinctive problem is that **diet is measured with
very large error**, and the field's history of reversed findings traces
directly to it.

## Dietary assessment error

- **Self-reported intake is systematically biased**, not just noisy.
  Under-reporting is substantial (often 20–30% of energy), is greater in
  people with higher BMI, and correlates with social desirability — so the
  error is differential with respect to many outcomes of interest.
- Know what each instrument can support: **FFQs** capture long-run patterns
  crudely; **24-hour recalls** need multiple non-consecutive days to
  estimate usual intake; **food diaries** are more accurate but change
  behavior; **biomarkers** (doubly labeled water, urinary nitrogen,
  plasma fatty acids) are objective but available for few nutrients.
- Energy adjustment (residual method, nutrient density) is standard and
  should be reported — absolute nutrient intakes are dominated by total
  energy and by reporting error.
- Plausibility filtering of implausible energy reporters is common; the rule
  must be pre-stated (Standing Rule 4) and its effect reported, since it
  can change results.
- Measurement error attenuates associations toward the null and distorts
  multivariable models unpredictably. Regression calibration against a
  reference instrument is the appropriate correction where a validation
  substudy exists.

## Observational nutrition claims

- Diet is confounded by essentially everything — SES, education, smoking,
  physical activity, and other dietary components. Residual confounding is
  the default assumption, and a modest hazard ratio from a food-frequency
  study should be treated as weak evidence (Standing Rule 5, Standing Rule 7).
- **Substitution matters**: eating more of something means eating less of
  something else. Analyses should model substitution explicitly rather than
  treating a single food's intake as though it varied in isolation.
- Multiple testing is severe: many foods, nutrients, outcomes, and
  subgroups. Nutritional epidemiology has produced a large literature of
  associations that failed to replicate. Correct, or label as exploratory
  (`avoiding-p-hacking.md`).
- Reverse causation is common — preclinical disease changes diet before
  diagnosis. Lag analyses excluding early follow-up years are a standard
  check.

## Intervention trials

- **Blinding is often impossible** for whole foods or dietary patterns; say
  so, and blind outcome assessors where feasible.
- **Adherence and its measurement** are central. Report adherence
  objectively where possible (biomarkers, provided-food designs), not only
  by self-report. A null result with poor adherence is uninterpretable.
- **The control diet is the comparator** and must be described in as much
  detail as the intervention. "Usual diet" varies by population and drifts
  during a trial through contamination.
- Feeding studies (controlled provision) have high internal validity and low
  external validity; free-living studies the reverse. State which and scope
  accordingly.
- Register the trial and pre-specify the primary outcome; outcome switching
  is documented in this literature.
- Surrogate outcomes (LDL, blood pressure, weight) are not clinical
  endpoints. Claims about disease risk from a surrogate need to say so.

## Supplements and mechanistic work

- Dose, form, bioavailability, and formulation matter and must be reported;
  results for one form do not transfer to another.
- Baseline nutrient status determines whether supplementation can plausibly
  help — a repletion effect in deficient people says nothing about
  supplementation in replete people, and conflating them is common.
- Animal and cell-culture nutrition results translate poorly; use the
  scoping discipline in `pharmacology-drug-development.md`.

## Conflicts of interest

The field has a well-documented industry-funding problem, with sponsored
studies more likely to report sponsor-favorable results.
- Disclose funding source, sponsor role in design and analysis, publication
  rights, and author relationships including consultancies and speaking fees.
- Commodity board and trade association funding counts and should be named
  specifically, not folded into "industry support."

## Reporting standards

- **CONSORT** for trials; **STROBE-nut** (a STROBE extension) for
  observational nutrition studies; **PRISMA** for reviews.
- Report the dietary assessment instrument, its validation in this
  population, and the food composition database and version used.

## Red flags

- A hazard ratio from a single FFQ-based cohort presented as dietary advice
- No energy adjustment, or implausible-reporter exclusion rules appearing
  post hoc
- An intervention trial with no objective adherence measure
- Substitution ignored — more of X analyzed without modeling what it
  replaced
- Industry funding disclosed vaguely, or sponsor role unstated
