# Field Layer: Machine Learning

## Reporting standards

- No single universal checklist, but expected elements at most venues:
  dataset description and provenance, exact train/validation/test splits
  (and how they were determined), hyperparameters and how they were
  selected (grid search, random search, a specific tuning budget), compute
  used, number of runs/seeds, and the exact evaluation metric and protocol.
- Model/data cards (for released models and datasets) are an increasingly
  expected form of documentation — recommend them when the user is
  releasing a model or dataset alongside a paper.
- Reproducibility checklists used by major venues (e.g., NeurIPS's
  checklist) are a reasonable default structure if the target venue doesn't
  specify its own.

## The ML-specific version of "hypothesis before analysis" (Standing Rule 1)

- The equivalent of a locked plan here is: a fixed evaluation protocol
  (metric, test set, baselines to compare against) decided **before**
  looking at test-set performance. Tuning hyperparameters, architecture
  choices, or preprocessing against the test set — even implicitly, by
  repeatedly checking test performance while iterating — is the ML
  analogue of p-hacking and should be named as such.
- A held-out test set that's been used for any iteration or model selection
  is no longer a clean held-out set; treat reported numbers from it as
  optimistic and say so.
- For claims about a novel method beating baselines, check: were baselines
  tuned with comparable effort to the proposed method? An undertuned
  baseline inflates the apparent improvement — this is a common and
  specifically ML version of overclaiming (`adversarial-review.md`).

## Effect size equivalent

- Point improvement over baseline (accuracy, F1, AUC, BLEU, etc.) needs a
  measure of variance across seeds/runs/folds, not a single number treated
  as exact — report mean ± std or a confidence interval across multiple
  runs. A single-seed result presented as "our method achieves X%" without
  variance information is the ML equivalent of a p-value with no effect
  size or CI (`effect-size-over-significance.md`).
- Statistical significance testing for comparing methods (e.g., a paired
  test across seeds/folds, or bootstrap confidence intervals) is
  increasingly expected, especially when the reported improvement is small.
- Practical significance matters here too: is a 0.3-point improvement on a
  benchmark actually meaningful, or within noise given typical run-to-run
  variance for that benchmark?

## Adequate "sample size"

- Analogous concerns apply to dataset size, number of training runs/seeds,
  and evaluation set size — route to `power-analysis.md`'s general
  reasoning (effect of interest, variance, and how many runs are needed to
  distinguish signal from noise) even though the tooling looks different
  from classical power analysis.

## Bias and ethics specifics

- Historical/measurement bias in training data can be encoded into a model
  and then presented as if the model's behavior were a neutral technical
  finding — checking for this belongs in `ethics-and-bias-check.md`, but is
  worth flagging directly here since it's a leading failure mode specific
  to this field.
- Data provenance and consent for data used in training (scraped data,
  user-generated content, licensed datasets) is an active area of ethical
  and legal scrutiny — flag when this isn't addressed.
- Dual-use and downstream harm considerations are increasingly expected in
  a "broader impacts" or ethics statement at major venues.

## Publication norms

- arXiv preprints are the field norm, typically posted before or
  concurrent with peer-reviewed submission; this is not a departure from
  the field's practice.
- Code and trained model release (or a clear statement of why not, e.g.
  licensing or safety constraints) is close to a default expectation at
  major venues now, not an optional extra.

## Red flags specific to this field

- Test-set performance reported after what sounds like iterative tuning
  against that same test set
- A new method's improvement over baseline with no variance/seed
  information
- A benchmark result generalized to a much broader claim about the
  method's capability than the benchmark actually tests
