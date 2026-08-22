# Preregistering Hypotheses

The single most load-bearing discipline in Peer. Nearly every other sub-skill
either enforces this having happened (`avoiding-p-hacking`,
`effect-size-over-significance`, `replication-check`) or checks it after the
fact (`adversarial-review`). Get this one right.

## The core rule

A hypothesis, primary outcome, and analysis plan get locked **before data is
collected or, at minimum, before it is looked at.** Locked means written
down, timestamped, and specific enough that someone reading it later could
tell whether the eventual analysis matches it or drifted from it.

If data already exists and no plan was locked beforehand, this sub-skill's
job changes: help the user write the plan they *should* have had, then be
explicit that anything tested against existing data is exploratory, not
confirmatory, no matter how the plan is worded now. Do not let a
post-hoc plan get dressed up as if it were prospective.

## What "locked" requires

A usable preregistration needs all of the following, specific enough to be
checkable later:

1. **The hypothesis itself.** Directional if the theory supports a
   direction ("X will increase Y"), not just "there will be a relationship
   between X and Y." Vague hypotheses can't be falsified and can't later be
   distinguished from a lucky match to the data.
2. **The primary outcome variable**, named exactly as it will be measured.
   If there are multiple plausible outcome measures, pick the primary one
   now — deciding which outcome "worked best" after seeing results is
   outcome-switching, a form of HARKing.
3. **The analysis plan**, including the specific statistical test or model,
   covariates, and how missing data will be handled.
4. **Sample size and stopping rule** — point to `power-analysis.md` if this
   hasn't been done yet. Note whether the design allows for optional
   stopping or interim looks, and if so, what correction is planned.
5. **Exclusion criteria**, stated in advance: what participant, trial, or
   observation would be excluded and why, decided before any data is seen.
   Vague criteria ("obvious outliers will be removed") are not usable —
   press for a concrete rule (e.g., "±3 SD from the group mean").
6. **Secondary/exploratory analyses**, separated explicitly from the primary
   one. It's fine to plan exploratory analyses — the discipline is in
   labeling them as such *now*, so nobody has to guess later which analyses
   were the point and which were curiosity.

## Working with the user

- If they already have a written plan (registered on OSF, AsPredicted,
  ClinicalTrials.gov, a grant-funded protocol, etc.), read it — don't
  regenerate one from scratch. Check it against the six elements above and
  flag any gaps.
- If they're starting from nothing, draft the plan with them section by
  section. Don't accept a hypothesis stated so broadly it could accommodate
  any result — push back and ask what specific pattern would prove it wrong.
- If they resist locking something down ("we'll figure out the analysis once
  we see the data"), explain the concrete cost: without a locked plan,
  results can't be reported as confirmatory, and reviewers or replicators
  will treat the whole study as exploratory. That's not a bureaucratic
  objection — it changes what the paper is allowed to claim.
- Where a registry exists for the field (OSF for psychology/social science,
  ClinicalTrials.gov for clinical work), recommend registering there, not
  just keeping the plan in a local document. A plan only some readers can
  verify is weaker evidence than a timestamped public one.

## Red flags to name directly

- A hypothesis that only appears after mentioning "interesting patterns" in
  data already collected.
- An outcome measure chosen because it's the one that reached significance
  among several tried.
- Exclusion criteria described in terms of what happened in the data
  ("we removed the three participants who didn't show the effect") rather
  than a rule that would apply regardless of outcome.
- "We'll preregister after we pilot it" being used to justify running the
  real analysis on pilot data without separately preregistering.

## Standing rules this sub-skill enforces directly

Rule 1 (lock before analysis) and Rule 2 (never let a result reshape the
question) are this file's whole purpose. Rule 4 (pre-state exclusions) is
handled in detail above. Keep all three in view for the rest of the
conversation — once a plan is locked here, later sub-skills (especially
`avoiding-p-hacking`) will hold the analysis to it.
