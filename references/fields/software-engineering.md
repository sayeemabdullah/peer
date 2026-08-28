# Field Layer: Software Engineering

Covers empirical software engineering: mining software repositories, studies
of developers, testing and program analysis evaluation, and studies of
development practice. The field spans **tool evaluation** and **human
studies**, which have different failure modes — identify which one a given
claim rests on.

## Mining software repositories (MSR)

- **Sampling**: how were projects selected? GitHub-star-ranked samples
  over-represent popular, well-maintained, English-language, and often
  library-type projects, and generalize poorly to industrial or legacy code.
  State the sampling frame and its limits.
- **Toy and inactive projects**: a large fraction of public repositories are
  tutorials, forks, coursework, or abandoned. Filtering criteria must be
  stated and applied before outcomes are examined.
- **Commit-level inference**: linking commits to bug fixes via message
  keywords (SZZ and variants) is noisy in known, measurable ways. Report the
  heuristic used and, ideally, a manually validated sample with agreement
  statistics.
- **Construct validity is the recurring weakness**: lines changed is not
  effort, commit count is not productivity, issue-close time is not fix
  difficulty, and stars are not quality. Name the gap between the measured
  proxy and the claimed construct — this is the field's characteristic
  overclaim.

## Studies with developers

Human-subjects work, subject to `ethics-and-bias-check.md` and the practices
in `human-computer-interaction.md`:
- Students vs. professionals: student samples are common and acceptable when
  justified, but the generalization to professional practice needs to be
  argued, not assumed.
- Task realism: short lab tasks may not reflect work on large unfamiliar
  codebases; state the gap.
- Learning and order effects in within-subjects designs; counterbalance and
  say so.
- Sample size for developer studies is usually small — report effect sizes
  and intervals rather than leaning on significance
  (`effect-size-over-significance.md`), and don't treat a null from an
  underpowered study as evidence of no effect.

## Evaluating tools (testing, analysis, repair, code generation)

- **Benchmark selection**: Defects4J, SWE-bench, BugsInPy and similar are
  checkable; hand-picked bug sets are not. Report results on the full
  benchmark, not a subset chosen after seeing performance.
- **Overfitting to the benchmark**: tools tuned on the same benchmark they
  report on will overstate generality. A held-out set, or evaluation on a
  benchmark released after the tool was built, is much stronger.
- **Patch/output correctness**: for program repair and code generation, a
  patch passing the test suite is not necessarily correct — weak test suites
  admit plausible-but-wrong patches. Report manual validation of a sample,
  with the criteria used.
- **Baselines**: compare against the actual state of the art with
  comparable tuning and compute budget, on the same benchmark version.
- **False positives**: for static analysis, precision on real code matters
  more than recall on synthetic benchmarks; report both, and report the
  developer-facing false-positive burden.

## Reporting standards

- The ACM SIGSOFT empirical standards give per-method checklists
  (experiments, case studies, questionnaire surveys, repository mining,
  qualitative studies) — use the one matching the method.
- Registered Reports are offered at several venues and are worth using where
  the study is confirmatory.
- Threats to validity sections are expected: internal, external, construct,
  and conclusion validity, addressed specifically rather than as boilerplate.

## Publication norms

- Conferences (ICSE, FSE, ASE, ISSTA, MSR) are primary; journals (TSE,
  TOSEM, EMSE) also carry weight, more than in most CS areas.
- Artifact evaluation is well established.
- Preprints are common; check double-blind policy before posting.

## Red flags

- A metric proxy treated as the construct (commits as productivity, LOC as
  effort)
- Repository sampling by stars with no discussion of what that excludes
- A repair or code-generation result validated only by test-suite pass rate
- A subset of a standard benchmark, with the selection unexplained
- A boilerplate threats-to-validity section that doesn't engage the study's
  actual weaknesses
