# Field Layer: Pharmacology & Drug Development

Covers preclinical pharmacology, toxicology, pharmacokinetics, and the
translation from bench to clinical trials. Clinical trial work itself
follows `clinical-biomedical.md`; this file covers preclinical rigor and the
translation step where most attrition happens.

## Preclinical rigor

The preclinical literature has a well-documented reproducibility problem,
and the specific practices associated with inflated effects are known:
- **Randomization and allocation concealment** of animals to treatment
  groups — frequently omitted, and its absence is associated with larger
  reported effects.
- **Blinded outcome assessment**, especially for subjective endpoints
  (behavioral scoring, histological grading).
- **A priori sample size calculation**, not a conventional n per group.
- **Pre-stated inclusion/exclusion criteria** for animals and data points;
  post-hoc exclusion of "non-responders" is a red flag (Standing Rule 4).
- Report the **experimental unit correctly**: for a cage-level intervention,
  the cage is the unit, not the animal; for repeated measurements on one
  animal, the animal is the unit. Treating pseudoreplicates as independent
  inflates significance and is common.

**ARRIVE 2.0** is the reporting standard; several journals also require a
specific rigor checklist at submission.

## Dose-response and mechanism

- A single dose does not establish a pharmacological effect. Dose-response
  relationships (with a plausible curve, not just two points) are the
  standard evidence.
- Report the actual exposure achieved (PK: Cmax, AUC, half-life, free
  fraction), not just the administered dose. An effect at a concentration
  never achievable in humans is not translatable, and the free (unbound)
  concentration is what matters at the target.
- **In vitro concentrations must be plausible**: effects at high micromolar
  concentrations for a compound with nanomolar target affinity usually
  indicate off-target activity, not the proposed mechanism.
- Selectivity data belongs alongside potency; a compound's effect attributed
  to one target needs evidence it isn't hitting others. Chemical probe
  quality matters — many widely used inhibitors are non-selective, and
  conclusions built on them are correspondingly weak.
- Orthogonal validation: genetic (knockout, knockdown, degradation) plus
  pharmacological evidence is much stronger than either alone.

## Model validity and translation

- State what the animal model actually models — most disease models capture
  some features and not others, and their predictive validity for human
  outcomes varies enormously and is often poor.
- Species differences in metabolism, target expression, and immune function
  limit extrapolation; address them rather than assuming translation.
- Sex as a biological variable: both sexes unless justified. Drug responses
  differ by sex, and single-sex preclinical work has produced clinical
  surprises.
- Efficacy in a model is a hypothesis about humans, not evidence of clinical
  benefit. Scope the language accordingly (Standing Rule 7).

## Statistics

- Small group sizes make normality assumptions hard to verify; consider
  non-parametric approaches or report the check performed.
- Repeated measures over time need appropriate models, not a series of
  t-tests at each timepoint.
- Report effect sizes with intervals; "p < 0.05, n = 6" is not a
  characterization of the effect's magnitude (`effect-size-over-significance.md`).
- Report all experimental replicates, and distinguish technical replicates
  (same sample measured repeatedly) from biological replicates — only the
  latter support inference about the population.

## Ethics and regulatory

- IACUC or equivalent approval, humane endpoints, and 3Rs justification.
- GLP requirements apply to regulatory toxicology studies; state whether
  studies were GLP-compliant when they support regulatory claims.
- Conflicts of interest — industry sponsorship, equity, patents — require
  disclosure and are scrutinized closely.

## Publication norms

- Journals dominate: JPET, British Journal of Pharmacology (which enforces
  explicit design/analysis requirements), Nature Reviews Drug Discovery,
  and disease-area journals.
- bioRxiv preprints are accepted at most venues.
- Compound structures, purity data, and full characterization should be
  reported; a pharmacological claim about an undisclosed compound is not
  checkable.

## Red flags specific to this field

- No randomization or blinding described in an animal efficacy study
- A single dose used to claim a pharmacological effect
- In vitro activity at concentrations far above the compound's target
  affinity
- Technical replicates presented as n
- Efficacy in one animal model described in clinical-benefit language
