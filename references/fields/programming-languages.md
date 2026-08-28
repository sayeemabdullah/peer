# Field Layer: Programming Languages & Methodologies

Covers language design, type systems, semantics, verification, compilers,
and program analysis. Work here is typically **formal** — theorems about a
calculus — often paired with an implementation and an empirical evaluation.
The halves are judged differently; check which one a claim rests on.

## The formal half

Follows `theoretical-computer-science.md`: assumptions stated, quantifiers
correct, proofs complete. Additionally, specific to PL:

- **What exactly was proved?** Type soundness for a core calculus is a
  different claim from soundness for the implemented language. State the gap
  between the formalized subset and the real language, and which features
  were omitted (usually the hard ones: reflection, FFI, concurrency,
  exceptions, mutable state).
- **Mechanization**: was the metatheory checked in Coq, Lean, Agda, or
  Isabelle? Say so and release it. For soundness results of any complexity,
  mechanization is increasingly the expectation, and a hand proof of a large
  system invites scrutiny it may not survive.
- **Soundness vs. completeness**: an analysis can be sound (no false
  negatives) or complete (no false positives), rarely both. State which, and
  don't let "sound" in the paper's sense drift into "correct" in the
  reader's sense. Note also that "soundy" — sound except for documented
  common exceptions — is widespread in practical analyses and should be
  stated explicitly rather than implied.

## The empirical half

- **Benchmark suites**: use established ones (SPEC, DaCapo, Renaissance,
  or domain-standard suites) where they exist. Report the whole suite;
  omitting benchmarks that don't improve is selective reporting.
- **Compiler and runtime measurement** follows
  `computer-systems-networks.md`: warm-up (critical for JIT-compiled
  languages, where steady state may take many iterations), multiple runs,
  dispersion reported, hardware and version details stated.
- **Compile-time vs. run-time** costs both belong in the table; an
  optimization that doubles compile time to save 2% at run time is a
  different tradeoff than the headline suggests.
- **Analysis precision claims**: report false-positive rates on real code,
  not only on synthetic benchmarks designed to exercise the analysis.

## Usability and human factors claims

Language and API design papers sometimes claim a design is clearer, safer,
or easier. That is an empirical claim about people and needs a human study
(`human-computer-interaction.md`), not an argument from the authors'
intuition. If no study was run, the claim should be scoped to what was
actually shown — expressiveness, static guarantees, or code size — rather
than asserted as usability.

## Reporting

- Give the full formal system (syntax, typing rules, semantics) in the paper
  or a clearly referenced appendix, not only in prose.
- Where the implementation diverges from the formalism, say so explicitly;
  reviewers look for this and its absence reads as an oversight.
- Release the implementation and the mechanized development. Artifact
  evaluation is well established at PL venues and badged artifacts are the
  norm for strong papers.

## Publication norms

- Conferences (POPL, PLDI, OOPSLA, ICFP, ECOOP, CAV) are primary; PACMPL is
  the associated journal-of-record for several of them.
- arXiv preprints are common; check double-blind policy before posting.
- Artifact evaluation is expected at most major venues.

## Red flags

- Soundness proved for a core calculus, with the paper's claims stated for
  the full language
- A hand proof of an intricate metatheory with no mechanization and no
  proof appendix
- Benchmarks from a standard suite silently omitted
- JIT-compiled language benchmarks with no warm-up policy stated
- A usability or readability claim with no human study behind it
