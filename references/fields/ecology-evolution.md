# Field Layer: Ecology & Evolutionary Biology

Covers field ecology, population and community ecology, conservation
biology, and evolutionary biology. The field's signature methodological
problem is **pseudoreplication** — treating non-independent observations as
independent — and it remains common decades after being named.

## Pseudoreplication

- The experimental unit is the level at which treatment was applied. If a
  treatment is applied to one pond, plot, tank, or enclosure, then measuring
  50 organisms within it gives n = 1, not n = 50.
- **Simple pseudoreplication**: one replicate per treatment, subsamples
  analyzed as replicates. **Temporal pseudoreplication**: repeated measures
  over time on the same unit treated as independent. **Sacrificial
  pseudoreplication**: replicates exist but are pooled before analysis.
- The fix is a model matching the design: mixed-effects models with the
  experimental unit as a random effect, or analysis at the unit level.
- Ask directly what the experimental unit is and how many independent ones
  there were. This is the single most productive question to ask of an
  ecological experiment.

## Field study design

- Field experiments face unavoidable spatial and temporal heterogeneity.
  **Blocking** by site or time, and randomizing treatment within blocks,
  is standard and should be reported.
- **BACI designs** (Before-After-Control-Impact) are the standard for
  unreplicated impact assessment; report whether before-data exists, since
  after-only comparisons cannot separate impact from pre-existing difference.
- Spatial autocorrelation violates independence for spatially distributed
  samples — test for it and account for it where present (see
  `geography-gis.md`).
- Observational field data supports association; causal claims need a
  manipulation or an identification strategy.

## Detection, sampling, and counts

- **Imperfect detection**: not seeing an organism doesn't mean absence.
  Occupancy and mark-recapture models estimate detection probability
  explicitly; raw counts confound abundance with detectability, which varies
  by habitat, observer, season, and species.
- Report survey effort, method, observer training, and conditions. Effort
  that varies across sites or years confounds comparisons.
- Count data is usually overdispersed; Poisson models without checking for
  overdispersion understate uncertainty. Negative binomial or
  quasi-likelihood approaches are standard.
- Zero-inflation should be diagnosed rather than assumed in either direction.

## Evolutionary and comparative analyses

- **Phylogenetic non-independence**: species are related, so their trait
  values are not independent observations. Comparative analyses require
  phylogenetically informed methods (PGLS, independent contrasts), and the
  phylogeny used, its source, and uncertainty in it should be reported.
- Selection and adaptation claims need evidence beyond a plausible story —
  a trait's current utility does not establish it as the reason the trait
  evolved.
- For genomic scans for selection, multiple testing across the genome is
  severe; see `genomics-bioinformatics.md`.

## Model selection

- AIC-based model selection over a large candidate set is effectively a
  search, and the selected model's coefficients are biased. Define a small,
  hypothesis-driven candidate set in advance rather than dredging.
- Report model-averaged estimates with uncertainty, or the full candidate
  set with weights, rather than only the top model's coefficients as though
  it were pre-specified.
- Stepwise selection has well-documented problems and is best avoided.

## Ethics and permits

- Animal research requires institutional approval (IACUC or national
  equivalent) and, for fieldwork, collecting and access permits.
- **Nagoya Protocol** obligations apply to genetic resources collected
  internationally — access and benefit-sharing agreements are a legal
  requirement, not a courtesy.
- Work in another country requires local collaboration and permits;
  "parachute science" — extracting data or samples without local partnership
  or authorship — is both an ethical failure and increasingly a barrier to
  publication.
- Endangered species work carries additional legal restrictions.

## Reporting and data

- Data and code deposition (Dryad, Zenodo, GBIF for occurrence data) is
  required by most journals in this field.
- Sequence data to GenBank; specimen vouchers to a recognized collection
  with accession numbers.

## Publication norms

- Journals dominate: Ecology, Ecology Letters, Journal of Animal Ecology,
  Evolution, Am Nat, Conservation Biology, Methods in Ecology & Evolution.
- bioRxiv and EcoEvoRxiv preprints are accepted and increasingly common.
- Registered Reports available at several venues.

## Red flags specific to this field

- Subsamples within a treated unit analyzed as independent replicates
- Raw counts compared across sites with no detection modeling
- A comparative analysis across species with no phylogenetic correction
- The top AIC model's coefficients reported from a large dredged candidate
  set
- International fieldwork with no local collaborators or permits mentioned
