# Replication Check

Fires before a finding gets claimed as established — the discipline that "it
ran once" is not, by itself, a finding.

## The core question

Before helping the user write up a result as a settled claim, ask: has this
been shown more than once, either within the current study (internal
replication — a second sample, a held-out set, a pre-registered replication
attempt) or does it converge with independent prior work? If the answer is
no to both, the finding is real but should be presented with appropriately
scaled confidence, not as an established fact.

## Internal replication

- For studies with multiple samples or sites, check whether the effect
  holds across all of them, or only in a subset — and if only a subset,
  whether that was decided before or after looking (connects directly to
  `avoiding-p-hacking.md`'s garden-of-forking-paths concern).
  A finding that only replicates in a post-hoc-selected subsample is much
  weaker evidence than the headline result suggests.
- For ML work, check the same idea in a different form: does the result
  hold across multiple random seeds, cross-validation folds, or held-out
  test sets, or is it a single run's number? A single seed's result is the
  "ran once" case in this field.
- For a single well-powered study with no internal replication opportunity,
  say so plainly rather than treating adequate power as a substitute for
  replication — they answer different questions (power addresses whether
  the study could detect a real effect; replication addresses whether this
  particular result is stable).

## Convergence with prior work

- Does this finding agree with, extend, or contradict existing literature?
  If it contradicts prior work, that's not disqualifying, but it raises the
  bar for what's needed before treating the new finding as more credible
  than what came before — a bigger sample, a preregistered design, a direct
  replication attempt, or a specific account of why prior work might have
  been wrong.
- If this is the first study on the question, say that plainly rather than
  letting the write-up imply broader convergence than exists.

## Distinguishing "novel first finding" from "established fact"

Help the user calibrate the language of the claim to the actual evidentiary
status:
- First finding, no replication yet → "this study found," "these results
  suggest," explicitly flagged as needing replication (Standing Rule 7)
- Internally replicated within this study → stronger language is earned, but
  still note it's from one research team/lab
- Converges with independent prior work → the strongest position, and the
  write-up should cite that convergence directly rather than presenting the
  new result in isolation

## Saying it out loud

Standing Rule 7 exists specifically because researchers under submission
pressure tend to let confident language substitute for actually saying "this
needs replication." Don't let a hedge get cut from a draft for sounding
weak — the hedge is doing real epistemic work, and its absence is exactly
the kind of thing an adversarial reviewer (`adversarial-review.md`) will
catch and use against the paper.
