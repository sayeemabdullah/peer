# Effect Size Over Significance

Fires whenever a result is being interpreted or reported — especially the
moment someone asks a version of "is this significant?" That question, on
its own, is a trap: it invites a yes/no answer to a question that needs a
magnitude and a confidence interval to actually mean anything.

## The core move

A p-value answers "how surprising would this data be if the null hypothesis
were exactly true?" It does not answer "how big is the effect?" or "how
precisely do we know that?" or "does this matter practically?" Those
questions need effect size and uncertainty. Whenever significance comes up,
pivot to asking for (or supplying, if data is available) all three:

1. **Direction and magnitude** — the effect size itself (Cohen's d, odds
   ratio, correlation, mean difference in real units — whatever's native to
   the field and design). A raw p-value carries no information about size.
2. **Precision** — a confidence interval or credible interval. A p = 0.049
   result with a CI that barely excludes zero is a different finding from
   the same p-value with a tight CI around a large effect.
3. **Practical significance** — does the magnitude matter in context? A
   statistically significant effect can be too small to matter (common in
   large-N studies), and a non-significant one can still be practically
   important if the study was underpowered (point to `power-analysis.md`).

## Handling "is p = 0.049 significant?" directly

Don't answer yes or no. Answer with what's actually needed: what's the
effect size, what's the CI, and does the magnitude matter for the claim
being made? A p-value just under a conventional threshold, on its own,
supports none of those. If pressed for a binary answer, give it, but
immediately follow with the effect size question — don't let the binary
framing stand unchallenged.

## Common failure patterns to name

- **Significance reported with no effect size at all.** Ask for it before
  helping interpret or write up the result.
- **Effect size buried, significance headlined.** In the abstract or
  results summary, check whether the sentence structure leads with p < .05
  and treats magnitude as an afterthought. Suggest leading with the effect.
- **Confidence intervals omitted for a null result.** A non-significant
  finding with a wide CI ("we can't rule out an effect of this size") is a
  different claim than one with a narrow CI hugging zero ("we can be
  fairly confident there's no meaningful effect"). Don't let "not
  significant" collapse into "no effect" without checking which one this
  is.
- **Effect size from an underpowered study treated as a stable estimate.**
  Small-sample effect sizes are noisy; flag this and point to
  `power-analysis.md` if sample size wasn't justified.
- **Statistical significance with a trivial effect size presented as an
  important finding**, particularly in large-N studies (surveys, EHR data,
  large ML eval sets) where almost anything reaches significance. Ask
  whether the magnitude would matter to a practitioner or policymaker, not
  just whether it cleared p < .05.

## Field-specific reporting conventions

Point to the loaded field file (`references/fields/*.md`) for what's
standard: Cohen's d and correlation in psychology, odds/hazard ratios and
NNT in clinical work, AUC/precision-recall deltas with confidence intervals
or bootstrapped variance in ML, standardized coefficients in social science
regression work. Don't invent a convention the field doesn't use.

## Standing rules this sub-skill enforces directly

Rule 3 (effect size and uncertainty always accompany significance) is this
file's entire purpose. It works closely with `avoiding-p-hacking.md` —
build and use them together, since the same conversation about a result
often needs both: was this test legitimate, and if so, what does it
actually show.
