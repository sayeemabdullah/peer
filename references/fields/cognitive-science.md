# Field Layer: Cognitive Science

Covers experimental cognitive psychology, psycholinguistics, computational
cognitive modeling, and decision science. Inherits `psychology.md`'s
open-science discipline; this file covers what's specific to
**trial-level experimental data and formal models of cognition**.

## Trial-level data and the analysis unit

- Experiments produce many trials per participant across many items. Both
  participants *and* items are random effects — analyzing over participant
  means alone (averaging across items) inflates false positives, the
  classic "language-as-fixed-effect fallacy."
- **Mixed-effects models** with crossed random effects for subjects and
  items are the field standard. Specify the random effects structure
  explicitly — maximal structure justified by the design where it converges,
  with the fallback procedure stated when it doesn't. A model reported only
  as "we ran a mixed model" is not reproducible.
- Don't select the random effects structure by whichever version yields
  significance; state the selection rule in advance.

## Reaction time analysis

- RT distributions are right-skewed, not normal. Options: transform (log,
  inverse), use a distribution suited to it (ex-Gaussian, shifted lognormal,
  Gamma), or use a model that handles skew. State which and why.
- **Trimming rules must be pre-stated** (Standing Rule 4): absolute cutoffs,
  SD-based cutoffs, or model-based exclusion all change results. Report how
  many trials were removed and by which rule.
- Speed-accuracy tradeoffs mean RT alone can mislead — a condition that is
  faster and less accurate is not easier. Analyze both, or use a model that
  jointly accounts for them (drift diffusion, LBA), which also yields
  interpretable parameters rather than a raw difference.
- Aggregate means can hide distributional shifts; delta plots or
  distributional analyses often show more.

## Computational modeling

- **Model comparison, not model fitting**: a model that fits the data is not
  evidence unless alternatives fit worse. Compare against plausible
  competitors, with a criterion that penalizes complexity (AIC, BIC, WAIC,
  cross-validation, or Bayes factors), and say which.
- **Parameter recovery**: can the fitting procedure recover known parameters
  from simulated data? If not, the fitted parameters aren't interpretable.
  This check is expected and frequently omitted.
- **Model recovery**: can the comparison procedure distinguish the candidate
  models when each generated the data? Without it, a model "winning" may
  reflect the comparison's insensitivity.
- Report the fitting procedure, optimizer, starting values, and convergence
  checks. Local minima are a real problem in this literature.
- **Posterior predictive checks**: does the model reproduce the qualitative
  patterns, not just achieve a good fit index?
- Fit at the individual level where possible; group-average fits can be fit
  well by a model that describes no individual.

## Stimuli and design

- Item selection matters: stimuli should be sampled or counterbalanced, and
  confounding variables (frequency, length, familiarity, neighborhood
  density in language work) controlled or included as covariates.
- Report the full stimulus set, or make it available — replication depends
  on it.
- Counterbalance presentation order; report the scheme.

## Power and replication

- Power depends on trial count as well as participant count; simulation-based
  power analysis is the appropriate tool for mixed-effects designs, since
  closed-form calculations don't apply. Point to `power-analysis.md`.
- The field's replication record is mixed, with several classic effects
  failing large-scale replication. Treat single-lab, small-N classic
  paradigms with corresponding caution (`replication-check.md`).
- Preregistration is well established; Registered Reports are widely
  available.

## Publication norms

- Journals: Cognition, JEP series, Psychonomic Bulletin & Review, Cognitive
  Science, JML, Computational Brain & Behavior.
- PsyArXiv preprints standard.
- Data, stimuli, and analysis code sharing on OSF is close to expected;
  model code should be released for computational work.

## Red flags specific to this field

- Analysis over participant means with items ignored
- Trimming rules that appear only in the results section
- A model fit reported with no competing model and no parameter recovery
- RT effects reported without accuracy, or vice versa
- Random effects structure chosen after seeing which version was significant
