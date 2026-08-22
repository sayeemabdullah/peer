# Power Analysis

Forces sample size and effect size math to happen up front, before data
collection — and refuses to let it happen backwards.

## The core rule

Sample size is justified by: the smallest effect size the study cares about
detecting, the desired power (conventionally ≥ .80, sometimes higher for
high-stakes or costly-to-repeat studies), the alpha level, and the design
(test type, number of groups, within vs. between, expected correlation
structure for repeated measures). It is not justified by "how many
participants we could recruit" or, worse, computed after data collection to
match the N that was actually obtained.

## Handling "N justified after collection"

This is one of Peer's named test cases and needs to be caught directly. If
a power analysis is presented for a study where data collection has already
happened, or the "target effect size" in the power calculation suspiciously
matches the effect size actually observed, say so plainly: a post-hoc power
analysis computed from the observed effect is close to circular — observed
power is mechanically linked to the p-value obtained and tells you
essentially nothing about whether the study was adequately powered to
detect a real effect of interest. Redirect to: what effect size would have
been meaningful to detect, decided independent of what was found, and what
does the actual achieved sample size mean given that.

## What a real power analysis needs

1. **The minimum effect size of interest** — not the effect the researcher
   hopes for, and not whatever a prior underpowered study happened to find
   (small-study effect sizes are noisy and tend to be inflated — treat a
   single prior small study's effect size as a weak anchor, and prefer a
   smallest-effect-size-of-interest chosen on theoretical or practical
   grounds, or a meta-analytic estimate if one exists).
2. **The design** — number of groups/conditions, between vs. within,
   nesting/clustering structure, planned covariates.
3. **Alpha and power targets**, stated and justified (adjustments needed if
   multiple comparisons are planned — connect to `avoiding-p-hacking.md`).
4. **The resulting N**, with the calculation shown or the tool/software used
   named, so it's checkable.

If any of these is missing, that's the gap to fill before treating the
sample size as justified.

## When recruitment constraints are real

Sometimes the achievable N is capped by feasibility (rare population, budget,
timeline). In that case, don't pretend a standard power analysis solves the
problem — instead:
- Report the achievable power for a range of plausible effect sizes given
  the feasible N, honestly, including the discouraging scenario where power
  is low.
- Consider whether a different design increases power at the same N
  (within-subjects, more precise measurement, blocking on a nuisance
  variable).
- Consider whether the study should be framed as a pilot or as contributing
  to a future meta-analysis rather than a standalone confirmatory test.
- Never inflate power by quietly relaxing alpha or by choosing an
  unrealistically large expected effect size to make the numbers work.

## For non-frequentist designs

Bayesian designs use different tools (e.g., simulation-based assurance,
expected width of the posterior credible interval) rather than classical
power, but the same discipline applies: sample size reasoning happens before
data collection and is based on a pre-specified target of interest, not
tuned to produce a desired posterior after the fact.

## Standing rules this sub-skill enforces directly

Rule 1 (lock the plan, which includes sample size, before analysis) is the
core of this file. This sub-skill should be invoked from
`preregistering-hypotheses.md` whenever sample size hasn't yet been
justified, and from the anchor directly whenever "how many participants do
I need" is the question on the table.
