# Field Layer: Psychology

## Reporting standards

- APA Style / JARS (Journal Article Reporting Standards) for what must be
  reported, distinct from APA citation formatting. JARS has specific
  modules for quantitative, qualitative, and mixed-methods designs — check
  which applies.
- For RCTs and clinical/intervention psychology, CONSORT applies alongside
  JARS.
- Preregistration is increasingly an explicit expectation, not just good
  practice — many journals now offer or require Registered Reports, where
  the introduction and methods are peer-reviewed and provisionally accepted
  *before* data collection. If the user is targeting a journal offering
  this format, it directly operationalizes Standing Rule 1 and is worth
  actively recommending.

## Adequate sample size

- No general N holds across psychology — effect sizes in this field have
  historically been overestimated due to small, underpowered samples
  (a major driver of the field's replication crisis). Route to
  `power-analysis.md`, and be skeptical of a target effect size drawn from
  a single small prior study rather than a meta-analytic estimate.
- Within-subjects designs are common in cognitive/experimental psychology
  and can achieve adequate power at lower N than between-subjects designs —
  but check that the analysis plan actually accounts for the repeated-measures
  structure (mixed models, repeated-measures ANOVA) rather than treating
  observations as independent.

## Ethics/IRB specifics

- Human subjects review (IRB or equivalent) is essentially universal for
  psychology research, including online/survey-only studies — a common
  misconception is that survey research is automatically exempt; this
  determination belongs to the IRB, not the researcher.
- Deception is more common in psychology than most fields (necessary for
  some experimental paradigms) and carries specific ethical requirements:
  justification for why deception is necessary, a debriefing process, and
  extra scrutiny in the IRB application.
- Vulnerable populations common in this field: children, clinical/patient
  populations, individuals in acute psychological distress — flag these
  specifically when present.

## Publication norms

- Preregistration on OSF (Open Science Framework) or AsPredicted is the
  field-standard venue; recommend it directly when helping lock a plan.
- Preprints on PsyArXiv are broadly accepted and increasingly normal before
  or during journal submission.
- The replication crisis in psychology (roughly the 2010s onward) has made
  reviewers and editors specifically attentive to power, preregistration
  status, and effect size reporting — a manuscript missing these is more
  likely to draw pointed reviewer criticism in this field than it might
  elsewhere.

## Red flags specific to this field

- A significant p-value from a small sample (N < ~30 per cell in a
  between-subjects design) presented without acknowledging the effect size
  is likely inflated and imprecise
- A striking, counterintuitive finding presented without any internal
  replication or preregistration — these are exactly the pattern most
  associated with the field's past replication failures
- Multiple DVs collected but only the significant one reported
  (`avoiding-p-hacking.md`)
