# Field Layer: Natural Language Processing

Covers computational linguistics and NLP: annotation, corpora, model
evaluation on language tasks, and multilingual work. Overlaps
`machine-learning.md` (training and benchmarking) and
`artificial-intelligence.md` (LLM and agent evaluation) — read those for
seed variance, baselines, and contamination. This file covers what's
specific to **language data as an object of study**.

## Annotation is measurement

- Report the annotation guidelines, the number of annotators, their
  background and training, and their compensation. Guidelines should be
  released; they are the operational definition of the construct.
- **Inter-annotator agreement** with an appropriate statistic (Cohen's or
  Fleiss' kappa, Krippendorff's alpha — chance-corrected, not raw
  agreement), reported per label where labels are imbalanced. Low agreement
  on a subjective task is informative, not something to suppress: it means
  the construct is contested, and a model trained on majority labels erases
  that disagreement.
- For subjective tasks (offensiveness, sentiment, stance), annotator
  demographics affect labels systematically. Consider reporting
  distributions rather than a single gold label, and say who the "gold"
  reflects.
- Adjudication procedure for disagreements should be stated, not left
  implicit.

## Dataset artifacts and spurious cues

- Crowdsourced datasets frequently contain shortcuts that let models score
  well without the intended capability — hypothesis-only baselines in NLI,
  lexical overlap heuristics, answer-position bias in QA.
- **Run the degenerate baseline**: a model given only part of the input, or
  a simple lexical heuristic. If it scores far above chance, the benchmark
  is partly measuring an artifact, and headline results need reinterpreting.
- Test on challenge or adversarial sets where they exist; strong in-domain
  performance with poor out-of-distribution performance is the norm rather
  than the exception, and reporting only the former overstates the result.

## Evaluation metrics

- **Automatic metrics are proxies with known limits.** BLEU, ROUGE, and
  similar n-gram metrics correlate weakly with quality for open-ended
  generation. Learned metrics (BERTScore, COMET) are better for some tasks
  but carry their own biases.
- Report statistical significance for metric differences using appropriate
  tests (bootstrap resampling, permutation), not a raw point difference —
  small metric gaps are frequently within noise.
- **Human evaluation**, where used, needs the protocol: rater count,
  qualifications, instructions, agreement, and compensation. It is
  measurement and should be reported as such.
- LLM-as-judge evaluation requires validation against human judgments; see
  `artificial-intelligence.md`.

## Language coverage

- The field is overwhelmingly English-centric. State which languages were
  evaluated and don't generalize claims about "language" from English alone.
- Typological diversity matters more than language count: ten
  Indo-European languages is narrower coverage than four typologically
  distinct ones. Morphologically rich, low-resource, and non-Latin-script
  languages break assumptions built into tokenizers and architectures.
- For low-resource language work, involve speakers of those languages as
  collaborators and co-authors rather than treating communities as data
  sources.
- Report tokenizer behavior for the languages studied — token counts per
  word vary widely and affect both cost and performance comparisons.

## Data provenance and ethics

- State the corpus source, license, and collection method. Web-scraped
  corpora may contain copyrighted, personal, or consented-for-other-purposes
  text.
- Documentation frameworks (datasheets for datasets, data statements)
  are expected at ACL venues and should describe speaker demographics,
  collection situation, and intended use.
- Text about identifiable people carries privacy obligations; social media
  text especially (see `computational-social-science.md`).
- Work on socially sensitive classification (toxicity, dialect, identity
  attributes) should address who is harmed by errors, and report
  disaggregated performance.

## Publication norms

- Conferences (ACL, EMNLP, NAACL, EACL, COLING) are primary; TACL and CL are
  the journals. ACL Rolling Review handles reviewing for many venues.
- arXiv preprints standard, subject to the venue's anonymity period.
- Responsible NLP checklists and limitations sections are mandatory at ACL
  venues — the limitations section is not optional boilerplate and is read.

## Red flags specific to this field

- Annotation with no agreement statistic, or raw agreement reported as if
  chance-corrected
- Benchmark results with no degenerate/partial-input baseline
- Generation quality claimed from n-gram metrics alone
- "Multilingual" evaluation covering only high-resource European languages
- Metric differences reported with no significance testing
