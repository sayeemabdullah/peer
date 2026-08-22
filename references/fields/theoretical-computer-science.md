# Field Layer: Theoretical Computer Science

Covers complexity theory, algorithms, cryptography, formal methods, and
related proof-based work. **Most of Peer's default machinery assumes
empirical research and does not apply here** — say so plainly rather than
forcing statistical discipline onto a proof.

## What replaces the empirical lifecycle

There is no data collection, no sample size, no p-value. Preregistration,
power analysis, and effect size reporting are not applicable. The
equivalents of Peer's core disciplines are:

| Empirical discipline | Theoretical equivalent |
|---|---|
| Locked hypothesis before analysis | A precisely stated theorem before the proof, with all quantifiers and assumptions fixed |
| Effect size over significance | Tightness of the bound — how far from optimal, and is the gap acknowledged |
| Replication | Independent verification of the proof; mechanized checking where feasible |
| Report what didn't work | State where the technique fails, and which cases remain open |

## What to check in a proof-based manuscript

- **Are all assumptions stated?** Hidden assumptions (uniformity, model of
  computation, oracle access, independence of hash functions, random oracle
  model) are the most common source of an incorrect claimed result. A
  theorem whose statement omits the model it holds in is not yet a theorem.
- **Do the quantifiers match the claim?** "For all n there exists c" and
  "there exists c for all n" are different theorems, and the second is often
  what a proof actually establishes while the first is what the abstract
  claims.
- **Is the bound tight, and is looseness acknowledged?** An O(n²) upper
  bound presented without noting the best known lower bound overstates what
  has been settled.
- **Do the constants matter?** An asymptotic improvement with an
  astronomical constant factor is a legitimate result but should not be
  described as practically faster without saying so.
- **Is the reduction correct in both directions?** Hardness results turn on
  reduction direction; check that the reduction goes the way the claimed
  conclusion requires, and that it is polynomial-time in the right parameter.
- **Does an experimental section, if present, match the theory?** Papers
  that pair a theorem with benchmarks should not let the empirical section
  quietly claim more than the theorem does — the empirical part is subject
  to the normal disciplines in `avoiding-p-hacking.md` and
  `effect-size-over-significance.md`.

## Reporting norms

- Full proofs belong in the paper or a clearly referenced appendix; "the
  proof is straightforward" covering a non-obvious step is a red flag a
  reviewer will press on.
- Where a proof has been mechanized (Coq, Lean, Isabelle), say so and make
  the development available — this is increasingly expected for
  intricate results and is the strongest available form of verification.
- Prior work must be credited precisely, including which special cases were
  already known. Overstating novelty relative to an existing special case is
  the field's characteristic form of overclaiming.

## Publication norms

- arXiv and ECCC preprints are standard and expected.
- Conferences (STOC, FOCS, SODA, CRYPTO, LICS, and field-specific venues)
  are the primary publication venue rather than journals, with journal
  versions following later and typically containing the full proofs.
- Independent verification is slow and often informal; a result that has
  been in circulation and scrutinized for a while carries more weight than a
  fresh preprint, and the difference is worth stating honestly.

## Red flags specific to this field

- A theorem statement that changed between the abstract and the formal
  statement section
- An assumption introduced mid-proof that isn't in the theorem statement
- A claimed improvement over prior work that compares against a weaker
  variant of the prior result than what was actually proved
- "Straightforward extension" or "similar argument" doing load-bearing work
  for the main result
