# Field Layer: Information Retrieval

Covers search, ranking, recommender systems, and their evaluation. The
field has an unusually mature evaluation tradition (Cranfield, TREC), and
the characteristic failures are specific to it: **biased relevance
judgments, and offline metrics that don't predict online behavior**.

## Test collections and pooling bias

- A test collection is documents, topics, and relevance judgments
  (qrels). The judgments are the expensive part and are usually **pooled**:
  only documents retrieved by contributing systems get judged.
- **Pooling bias** means a new system retrieving relevant documents nobody
  pooled has them scored as non-relevant, penalizing genuinely novel
  approaches. Check pool depth and which systems contributed, and consider
  bias-aware measures (bpref, infAP) or additional judging for unpooled
  documents.
- Relevance judgments are made by assessors with disagreement between them;
  report the source of qrels and, where available, agreement. Judgments made
  for one purpose may not suit a different task definition.
- Reusing an old collection for a much newer system class is where pooling
  bias bites hardest — say so when it applies.

## Metrics

- Choose a metric matching the task: nDCG for graded relevance with position
  discounting, MAP for binary relevance across the ranking, MRR for
  known-item search, Recall@k for candidate generation feeding a reranker.
  State the cutoff and, for nDCG, the gain formulation and discount — these
  vary between implementations and make numbers non-comparable.
- Report the exact evaluation tool and version (trec_eval, ir_measures) —
  implementations differ in tie-handling and cutoff behavior.
- **Statistical significance across topics** with a paired test, plus the
  number of topics. Topic variance is large; differences of a few points on
  50 topics are frequently not significant, and reporting a bare improvement
  without a test is the field's most common reporting failure.
- Correct for multiple comparisons when many systems or configurations are
  compared.

## Offline vs. online

- Offline metrics on a static collection do not reliably predict online
  behavior. State which was measured and don't let offline gains be
  described as improved user experience.
- **Online evaluation** (A/B tests, interleaving) measures real behavior but
  has its own pitfalls: novelty effects, position bias, and short-horizon
  metrics that conflict with long-term satisfaction. See `data-science.md`
  for experiment discipline.
- Interleaving is more sensitive than A/B testing for ranking comparisons
  and worth preferring where applicable.

## Recommender systems

- **Logged feedback is confounded by the deployed system**: users only
  interact with what was shown, so training and evaluating on logged
  interactions bakes in the incumbent ranker's behavior. Counterfactual
  or off-policy evaluation (IPS, doubly robust) with the logging policy's
  propensities addresses this; ignoring it inflates offline results.
- **Popularity bias**: recommending popular items scores well on accuracy
  metrics while being useless. Report beyond-accuracy measures — coverage,
  diversity, novelty, long-tail performance.
- Data splitting must respect time. Random splits of interaction data leak
  future information (`data-science.md`), and leave-one-out protocols with
  random negatives produce results that don't transfer.
- **Baselines**: well-tuned simple baselines (popularity, item-kNN, matrix
  factorization, BM25) frequently match or beat elaborate neural methods
  when tuned comparably. Reproducibility studies in this area have found
  this repeatedly — an untuned baseline is not evidence of improvement.

## Reproducibility

- Report the index, preprocessing (stemming, stopwords, tokenization),
  retrieval parameters (BM25's k1 and b), and hardware where efficiency is
  claimed. Small preprocessing differences change results measurably.
- Use established toolkits (Anserini/Pyserini, Terrier, PyTerrier) where
  possible, since they make configurations comparable.
- Efficiency claims need latency and index size alongside effectiveness;
  a small accuracy gain at large latency cost is a tradeoff, not a win.

## Publication norms

- Conferences: SIGIR, CIKM, WSDM, ECIR, RecSys. TOIS and IRJ are the
  journals.
- Shared tasks (TREC, NTCIR, CLEF) structure much of the field's
  evaluation and produce the reusable collections.
- Reproducibility tracks exist at SIGIR and ECIR; artifact and code release
  is expected.

## Red flags

- Metric improvements reported with no significance test across topics
- An old pooled collection used to evaluate a substantially different system
  class, with no bias discussion
- Recommender results from logged data with no correction for the logging
  policy
- Neural method compared against an untuned classical baseline
- Offline gains described as improved user satisfaction
