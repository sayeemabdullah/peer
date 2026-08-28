# Field Layer: Chemistry

Covers synthetic, organic, inorganic, analytical, and physical chemistry.
The reproducibility problem here is concrete and specific: **a synthesis
that cannot be repeated in another lab**, usually because the procedure was
under-reported rather than because the chemistry was wrong.

## Characterization is the evidence

A claimed new compound is only as good as its characterization. Expect,
for a novel compound:
- ¹H and ¹³C NMR with full assignments, plus copies of the actual spectra in
  the SI — not just tabulated shifts
- High-resolution mass spectrometry with the calculated and found masses
- IR where functional groups matter, melting point for solids, optical
  rotation for chiral compounds
- Elemental analysis or a stated purity method; X-ray crystallography where
  structure is in question (with CCDC deposition)

**Purity claims need a method.** "Pure by NMR" has a detection floor around
a few percent; HPLC, GC, or elemental analysis is stronger. Residual solvent
and water peaks should be accounted for, not cropped out. Spectra with
suspicious baselines, cropped regions, or inconsistent integrations are
exactly what reviewers and post-publication scrutiny look for.

## Reporting a procedure others can repeat

- Exact quantities in both mass and moles, concentrations, addition rates,
  temperature, and time — not "a solution of."
- Reagent source, grade, and purification; catalyst loading and source
  (trace metal contamination in commercial reagents has explained more than
  one "novel catalysis" result).
- Atmosphere and moisture control, glassware preparation, and stirring rate
  where it matters.
- **Yields**: state whether isolated or NMR/GC yield, and report the number
  of times the reaction was run. A single-run yield reported to the nearest
  percent implies a precision that isn't there. Report a range or mean
  across runs.
- Scope tables should include the failures. A substrate scope showing only
  successes hides the method's actual limits (Standing Rule 6), and
  reviewers increasingly ask for the unsuccessful substrates.

## Mechanism claims

- A proposed mechanism drawn in a scheme is a hypothesis. Supporting it
  requires evidence: kinetics, isotope labeling, KIE, intermediates trapped
  or observed, Hammett analysis, or computation.
- **Computational support** needs the functional, basis set, solvation model,
  and dispersion correction stated, plus verification that stationary points
  are genuine (frequency analysis). DFT energies matching a proposed pathway
  is weaker evidence than it appears if alternatives weren't computed.
- Control experiments distinguishing mechanisms should be reported even when
  they complicate the story.

## Analytical and physical chemistry

- Calibration curves with range, linearity, LOD and LOQ, and how they were
  determined.
- Replicate measurements with dispersion; instrument precision is not the
  same as method precision.
- Blanks and matrix effects addressed for trace analysis.
- Sample provenance, storage, and preparation — often the dominant source of
  variability.

## Safety and ethics

- Hazards must be stated for dangerous procedures (energetic materials,
  toxic reagents, high pressure). Journals require explicit hazard notes.
- Dual-use concerns apply to some syntheses; consider whether full procedural
  detail is appropriate to publish.
- Conflicts of interest and industrial funding require disclosure.

## Publication norms

- Journals dominate: JACS, Angewandte, Nature Chemistry, Organic Letters,
  Chemical Science, and analytical/physical specialty journals.
- ChemRxiv preprints are accepted at most publishers but are newer here than
  in physics; check the target journal's policy.
- The supporting information is a substantive part of the paper and is
  where reproducibility lives — spectra, procedures, crystallographic data.
- Crystallographic data goes to the CCDC; sequences and spectra to
  appropriate repositories.

## Red flags

- A new compound reported without copies of the actual spectra
- Yields from a single run reported without a range
- A substrate scope with no failed substrates
- Mechanism asserted from a drawn scheme with no experimental support
- Cropped or baseline-corrected spectra obscuring impurity regions
