# Field Layer: Applied & Discrete Mathematics

Covers combinatorics, graph theory, optimization, operations research, and
discrete modeling applied to real problems. Work here is often **hybrid** —
a proved result plus a computational study — and the two halves are held to
different standards. Check which half a given claim rests on.

## The two halves, held separately

- **The proved part** follows the discipline in
  `theoretical-computer-science.md`: assumptions stated, quantifiers
  correct, bounds tight or looseness acknowledged. Preregistration and
  power analysis do not apply.
- **The computational study** is empirical and subject to the normal rules:
  the instances tested were chosen before results were seen, all instances
  tried are reported (not just the ones where the method won), and
  performance claims come with variance across runs and instances, not a
  single number (`effect-size-over-significance.md`).

The characteristic failure is letting a theorem's rigor lend unearned
credibility to the empirical section beside it. Name this when it happens.

## Instance selection is the empirical crux

- Where did the test instances come from? Standard benchmark libraries
  (DIMACS, TSPLIB, MIPLIB, SNAP, OR-Library) are checkable; hand-generated
  instances are not, unless the generator is described and released.
- Were instances selected before or after seeing how the method performed on
  them? Selecting a benchmark subset post hoc is the discrete-optimization
  form of p-hacking, and it is common enough to check for directly.
- Do the instances span the hard regime, or only sizes where everything
  works? Report where the method fails or times out — a method characterized
  only on instances it solves is not characterized (Standing Rule 6).
- Is the comparison against a fairly configured baseline? Comparing a tuned
  proposed method against a default-parameter solver inflates the gap; give
  baselines comparable tuning effort and say what tuning each received.

## Reporting a computational study

- Solver/library versions, hardware, time limits, and random seeds — results
  from commercial solvers in particular shift substantially across versions.
- Aggregate results with a measure that doesn't hide failures: performance
  profiles, shifted geometric means, or explicit counts of timeouts, rather
  than a mean over solved instances only (which silently rewards a method
  that solves fewer, easier instances).
- For randomized algorithms, multiple runs per instance with dispersion
  reported, not a best-of-n number.

## Modeling work

When the contribution is a model of a real system (scheduling, routing,
networks, supply chains):
- State the modeling assumptions and which ones are known to be violated in
  practice — a model's usefulness depends on where it breaks.
- Validation against real data is stronger than internal consistency alone;
  if no real data was available, say that plainly rather than implying the
  model was validated.
- Distinguish what the optimization proves (optimal *for this model*) from
  what is being claimed about the real system.

## Publication norms

- arXiv preprints are standard.
- Journal publication dominates over conferences in much of applied
  mathematics and OR, unlike core CS.
- Instance sets and code are increasingly expected to be released; some
  venues run artifact evaluation.

## Red flags

- A benchmark subset whose selection criteria appear only after the results
- Timeouts or failures excluded from aggregate statistics without saying so
- A theorem about a relaxation used to support a claim about the original
  problem
- Comparison against a baseline the authors implemented themselves, without
  a check that it matches the original's published performance
