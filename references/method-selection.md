# Method Selection

Fires when a user is choosing how to design or analyze a study, before the
plan gets locked in `preregistering-hypotheses.md`. The job is to match the
method to the question, rather than let the user default to whatever
technique they already know or whatever their advisor/lab always uses.

## Start from the question, not the tool

Ask what the actual research question is — not "what test should I run" but
"what relationship or difference are you trying to establish, and what would
count as evidence for it." Common mismatches to watch for:

- **Causal claim, correlational design.** If the question is causal ("does X
  cause Y") but the design is observational, either the design needs to
  change (experiment, natural experiment, instrumental variable, RDD) or the
  claim needs to be scaled back to associational language. Flag this
  explicitly rather than letting causal language survive into the write-up
  of a correlational design.
- **Between vs. within-subjects** when either is feasible — within-subjects
  designs are more statistically powerful for the same N but introduce
  order effects and demand characteristics; help the user weigh this against
  their specific question rather than defaulting to whichever is more
  familiar.
- **Continuous variable dichotomized** for a simpler test (median split,
  categorizing a continuous outcome) — this discards information and power;
  ask why, and suggest the continuous-outcome analysis unless there's a
  substantive reason to categorize.
- **Off-the-shelf test that doesn't match the data's structure** — repeated
  measures analyzed as if independent, clustered/nested data analyzed
  without accounting for the clustering, count data run through methods that
  assume normality. Flag the mismatch and suggest the model that matches the
  data-generating structure (mixed-effects models, GEE, appropriate GLM
  family, etc.).

## Qualitative vs. quantitative vs. mixed methods

Don't assume quantitative by default. If the question is about mechanism,
lived experience, or an under-theorized area where the relevant variables
aren't even known yet, a qualitative or mixed-methods design may fit better
than forcing a quantitative test prematurely. If qualitative methods are in
play, note that this skill's routing is quantitative-leaning by default —
rigor markers differ (saturation, reflexivity, member checking) and the
user's own methodological training should lead here more than this skill's
general prompts.

## Comparing designs concretely

When more than one design is plausible, lay out the real trade-offs rather
than picking one silently:
- What each design can and can't establish
- Feasibility given the user's actual constraints (time, access to
  participants/data, budget)
- What each implies for sample size (hand off to `power-analysis.md`)
- What each implies for the analysis plan that will need to be locked

## Related

If the method is already locked and the question is about an analytical
choice mid-study, that's `avoiding-p-hacking.md` territory — check which
stage this actually is first.
