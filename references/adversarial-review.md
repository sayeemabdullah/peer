# Adversarial Review

This is the highest-value part of Peer and the easiest to do badly.
Encouragement is worthless here — the entire point is finding what a hostile
reviewer will find first, before they find it.

## First: read the actual artifact

Read the actual uploaded or pasted manuscript, not a summary of it, not just
the abstract. If only part of the paper was provided (e.g., just the
results section), review what's there but say plainly what couldn't be
assessed without the rest (methods to check results against, introduction to
check claims against motivation, etc.).

## The core task, in order

### 1. Find the single weakest load-bearing claim

Before anything else, identify the one claim the paper's conclusion most
depends on — the load-bearing one, not just the first thing that looks
questionable. Say it directly, in one or two sentences, before moving to the
full triage. This is the thing a good reviewer would go for first, and
burying it in a long list defeats the purpose.

### 2. Check whether the conclusion is actually supported

Read the claimed conclusion, then read the actual reported results, and ask
plainly: do the results, as reported, support this conclusion — not "is this
plausible," but "is this what the data in front of me actually shows."
Common gaps to check:
- Conclusion generalizes beyond the population/conditions actually studied
- Causal language used for correlational or observational evidence
- A secondary or exploratory result promoted to a primary claim in the
  abstract/discussion
- Effect described as "large" or "robust" without the effect size or CI to
  back it up (cross-reference `effect-size-over-significance.md`)

### 3. Run the standing-rule checklist

Check for each of these explicitly, don't just scan generally:
- **HARKing** — does the stated hypothesis look like it was shaped by the
  result? (see `avoiding-p-hacking.md`)
- **Missing effect sizes** — is significance reported without magnitude and
  uncertainty?
- **Post-hoc exclusions** — are participants/trials/outliers excluded with a
  rule that isn't stated as having been decided in advance?
- **Overclaiming** — does the discussion section claim more than the results
  section demonstrated?
- **Single-study citations doing heavy lifting** — is a load-bearing claim
  in the introduction or discussion supported by exactly one prior study,
  presented as if it were settled? (see Standing Rule 5)
- **Unverifiable or suspicious citations** — flag any citation you can't
  verify rather than assuming it's correct (Standing Rule 8)

### 4. Triage into three tiers — never a flat list

Present findings grouped, not interleaved:

- **Fatal** — undermines the paper's central conclusion. If unaddressed, the
  paper shouldn't be submitted, or the claim needs to be substantially
  walked back.
- **Major** — needs new analysis, new data, or a structural rewrite of a
  section. The paper can survive, but not without real additional work.
- **Minor** — fixable in revision: wording, missing citation, a figure that
  needs a clearer label, a caveat that should be added.

Within each tier, be specific: point to the exact claim, sentence, or
figure, not a vague area of concern.

## Tone

Direct, not cruel. The standard is what a good-faith but unsparing reviewer
at a competitive journal would write — someone who wants the paper to be
strong, not someone trying to reject it on principle. Do not pad findings
with unearned praise to soften them, and do not manufacture severity where
none exists. If the paper is genuinely solid, say so — but only after
actually checking, not as a reflexive opener.

**Never soften a real problem to be kind. A reviewer won't**, and a
comfortable review that misses a fatal flaw is worse than no review
(Standing Rule 10).

## What this sub-skill does not do

It does not rewrite the paper. If the user wants the identified problems
fixed, that's `manuscript-drafting.md` or a direct editing request — keep
review and drafting as separate acts so the user can see the critique before
any prose changes it.

## Standing rules this sub-skill enforces directly

Rules 2, 3, 5, 8, 9, and 10 all converge here — this file is the single
sub-skill where the most standing rules apply at once. Treat it as the
place where the discipline of the whole skill gets tested against a real
document.
