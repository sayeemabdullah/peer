# Field Layer: Materials Science

Covers materials synthesis, characterization, and structure-property
relationships, including nanomaterials, energy materials, and metallurgy.
Shares characterization discipline with `chemistry.md`; the distinctive
concern is that **processing history determines properties**, so an
incompletely reported synthesis makes a result unreproducible even when
everything measured is correct.

## Processing-structure-property claims

- The full processing history belongs in the methods: precursors and their
  purity, temperatures and ramp rates, atmosphere, pressure, hold times,
  cooling rate, and any post-treatment. Properties often depend on details
  that read as incidental.
- Batch-to-batch variation is real and frequently large. Report how many
  independent batches were made and whether properties were measured across
  them — a property measured on one batch is a property of that batch.
- Distinguish a correlation between structure and property from a
  demonstrated causal link; changing a synthesis parameter usually changes
  several structural features at once.

## Characterization must match the claim

- **Bulk vs. surface vs. local**: XRD sees bulk crystalline phases, XPS sees
  the top few nanometers, TEM sees a tiny region. A claim about the material
  needs a technique whose sampling volume matches the claim.
- **Representative imaging**: a single micrograph is an anecdote. Report how
  many regions were examined, and give statistics (particle size
  distributions with counts, not "approximately 20 nm" from one image).
- Amorphous content, minor phases, and impurities are missed by casual XRD;
  Rietveld refinement or complementary techniques are needed for
  quantitative phase claims.
- Instrument parameters (beam energy, scan rate, spot size, calibration
  standard) should be stated — peak positions and intensities depend on them.

## Property measurement

- **Sample geometry, contact quality, and measurement direction** dominate
  many property measurements (conductivity, mechanical testing, thermal
  transport). Report them.
- Report the number of specimens tested and the scatter, not a single
  best-performing value. Mechanical properties in particular are
  distribution-valued — Weibull statistics where brittle failure is involved.
- For energy materials (batteries, catalysts, photovoltaics), report the
  full testing protocol: mass loading, current density and how it was
  normalized, electrolyte, cycling window, and cell configuration.
  Performance normalized in an unusual way is a common route to an inflated
  headline number — state the normalization explicitly.
- **Stability and degradation** belong with the peak performance figure. A
  record efficiency that decays in hours is a different result from one that
  holds, and omitting the lifetime data is selective reporting.

## Benchmarking against the literature

- Compare against the actual state of the art, measured under comparable
  conditions. Literature values obtained under different protocols are often
  not comparable, and tables assembling them without noting protocol
  differences mislead.
- Where the field has an agreed protocol or certification (certified PV
  efficiencies, standardized mechanical test methods, ASTM/ISO standards),
  use it and say so.

## Computational materials work

- Report the code, functional, pseudopotentials, k-point mesh, cutoff, and
  convergence criteria; state what was converged and to what tolerance.
- Formation energies and band gaps are functional-dependent; the known
  limitations of the chosen method should be acknowledged rather than
  presented as settled values.
- High-throughput screening produces candidates, not validated materials —
  scope the claim accordingly.

## Publication norms

- Journals: Nature Materials, Advanced Materials, Chemistry of Materials,
  Acta Materialia, JACS, plus energy-specific venues.
- arXiv and ChemRxiv preprints accepted at many but not all venues.
- Data deposition (crystallographic data to CCDC/ICSD, computational data to
  Materials Project or NOMAD) is increasingly expected.

## Red flags

- A single micrograph or single specimen supporting a general claim
- Peak performance reported with no stability or cycling data
- Synthesis described too loosely to repeat (ramp rates, atmosphere omitted)
- Performance normalized unconventionally, inflating the headline figure
- Literature comparison table mixing incompatible measurement protocols
