# Field Layer: Artificial Intelligence

Covers AI systems research broadly: language models and agents, reasoning
and planning, multimodal systems, evaluation methodology, and human-AI
interaction studies.

**If the work is a supervised-learning benchmarking study** — training a
model, comparing against baselines on a fixed test set — use
`machine-learning.md` instead, which covers train/test discipline, seed
variance, and baseline tuning in detail. This file covers what's specific to
evaluating AI *systems*, where the failure modes differ.

## Benchmark contamination is the first question

Before any benchmark result is interpreted, ask whether the evaluation data
could have appeared in training. For models trained on web-scale corpora
this is the default assumption, not an edge case.
- Was contamination checked, and how (n-gram overlap, canary strings,
  held-out-by-construction data, post-cutoff data)?
- A benchmark released before the model's training cutoff should be
  treated as potentially contaminated unless the check is shown.
- Contamination inflates scores in ways that look exactly like capability.
  Say so plainly when it hasn't been ruled out.

## Evaluation methodology

- **Prompt sensitivity**: results from a single prompt template are a
  property of that template as much as the model. Report across multiple
  phrasings, or state that sensitivity wasn't measured.
- **Decoding parameters**: temperature, sampling, max tokens, and stop
  conditions materially change results and must be reported.
- **Variance**: stochastic generation means a single run is a sample.
  Report multiple runs with dispersion — this is the AI analogue of the
  effect-size discipline in `effect-size-over-significance.md`.
- **Scoring**: who or what graded the outputs? Exact match, an automated
  metric, an LLM judge, or human raters — each has known biases. For LLM
  judges specifically, check for self-preference bias, position bias, and
  whether the judge was validated against human agreement on a subsample.
- **Human ratings**: report inter-rater agreement, rater instructions,
  recruitment, and compensation.

## Claims about capability

- Distinguish "scored X on benchmark B" from "can do task T." Benchmarks are
  proxies with construct-validity limits, and a headline claim that skips
  from one to the other is the field's characteristic overclaim.
- Watch for anthropomorphic framing — "understands," "believes," "reasons,"
  "knows" — used as a description of a measurement rather than as shorthand.
  It quietly converts a behavioral result into a claim about internal
  states that the experiment did not test.
- Emergence and scaling claims need the metric examined: apparently sharp
  capability jumps can be artifacts of discontinuous metrics (exact match)
  rather than underlying capability change.
- Failure cases belong in the paper (Standing Rule 6). A capability
  demonstration with no reported failure modes is incomplete.

## Agents and multi-step systems

- Report the full scaffold: tools available, retry policy, step limits,
  context management, and any human intervention. Scaffold differences often
  explain more variance than model differences.
- Task success needs an unambiguous, pre-stated success criterion — post-hoc
  judgments of "close enough" are outcome-switching.
- Cost and latency alongside success rate; an agent that succeeds with
  unbounded retries is a different result from one that succeeds in one pass.

## Ethics and broader impact

- Data provenance and consent for training data are under active legal and
  ethical scrutiny — flag when unaddressed.
- Dual-use and downstream harm statements are expected at major venues.
- Human subjects in AI interaction studies need IRB review like any other
  human-subjects work (`ethics-and-bias-check.md`).
- Evaluations involving sensitive attributes should report subgroup
  performance rather than aggregate accuracy alone.

## Publication norms

- arXiv preprints are the field norm, typically before or with submission.
- Conferences (NeurIPS, ICML, ICLR, ACL, AAAI) are primary over journals.
- Model, code, and eval-harness release, or a stated reason for withholding,
  is close to a default expectation; eval harness version matters because
  benchmark scores are not comparable across harness implementations.

## Red flags

- A benchmark number with no contamination check and no prompt/decoding
  details
- A single run per condition, presented as a point estimate
- An LLM judge used with no human-agreement validation
- Capability claims generalized well beyond the tasks actually evaluated
- Cherry-picked qualitative examples with no systematic evaluation behind
  them
