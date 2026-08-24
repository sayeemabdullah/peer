# Field Layer: Agricultural & Crop Science

Covers agronomy, crop breeding, soil science, animal production, and field
trial research. Shares field-experiment discipline with
`ecology-evolution.md` — pseudoreplication is a live concern here too — with
additional structure from the field's mature experimental-design tradition.

## Experimental design is explicit here

- Report the design by name: randomized complete block, split-plot,
  split-split-plot, incomplete block, alpha lattice, augmented design. The
  design determines the correct error term, and analyzing a split-plot as a
  factorial is a common and consequential error.
- **The experimental unit is the plot to which treatment was randomized**,
  not the individual plant or the sample within a plot. Subsamples within a
  plot are not replicates.
- Blocking should follow the field's known gradient (slope, drainage, prior
  cropping); report how blocks were laid out and why.
- Report plot size, border/guard rows, and harvested area. Edge effects and
  interplot competition inflate treatment differences, especially for
  height, tillering, or lodging differences between plots.
- Randomization must be reported as actually performed; systematic
  arrangements confound treatment with position.

## Environments, years, and generalization

- **A single site-year is one environment.** Genotype-by-environment
  interaction is large in agriculture, and results from one location in one
  season generalize poorly.
- Multi-environment trials should report the analysis of G×E (AMMI, GGE
  biplot, mixed models with environment as random) rather than only main
  effects, and state whether environments are a random sample of a target
  population of environments.
- Report the weather for each site-year — a treatment effect in a drought
  year is a conditional finding. Long-term experiments are valuable
  precisely because they span environmental variation.
- Soil characterization (type, pH, organic matter, baseline nutrients) is
  necessary context for any nutrient or amendment study.

## Yield and measurement

- State moisture basis for yield (dry weight, or standardized moisture
  content) — comparisons across differing moisture bases are invalid.
- Report harvest method and area, and how border effects were excluded.
- Yield components (plants/area, heads/plant, grains/head, grain weight)
  decompose the effect and are more informative than yield alone.
- Distinguish agronomic optimum from economic optimum; a yield increase that
  costs more than it returns is not an agronomic recommendation.
- Report variability across replicates and the CV of the trial — a trial
  with a high CV cannot detect the differences being claimed.

## Breeding and genetics

- Report heritability estimates with the basis (plot, entry-mean) and the
  population they apply to; heritability is population- and
  environment-specific and doesn't transfer.
- Check-variety comparisons should include locally adapted current
  cultivars, not obsolete checks that inflate apparent gain.
- Genomic selection and marker-trait association work follows
  `genomics-bioinformatics.md` for multiple testing and population
  structure; population structure in breeding germplasm is strong and
  produces spurious associations if unaddressed.
- Report the seed source and generation; genetic drift and seed lot
  differences matter.

## Animal production

- Pen or paddock is often the experimental unit rather than the individual
  animal — report which and analyze accordingly.
- Animal ethics approval is required, along with the ARRIVE-style reporting
  in `pharmacology-drug-development.md`: housing, feed, health status,
  randomization, blinding of outcome assessment.
- Report feed composition and analyzed (not just formulated) nutrient
  content.

## Sustainability and system claims

- Claims about environmental benefit (carbon sequestration, emissions
  reduction, water saving) require the boundary discipline in
  `sustainability-informatics.md`: system boundary, functional unit, and
  measurement rather than estimation.
- **Soil carbon claims** need sampling to sufficient depth, bulk density
  correction (equivalent soil mass), and a timescale long enough for change
  to exceed spatial variability — short-term shallow sampling routinely
  overstates sequestration.
- Trade-offs across outcomes (yield vs. emissions vs. labor vs. input cost)
  should be reported together, not selectively.

## Ethics, funding, and access

- Agrochemical and seed industry funding is common and requires disclosure
  of sponsor role and publication rights.
- On-farm and participatory research involves farmers as collaborators;
  consent, compensation, and data ownership need addressing.
- Germplasm access is governed by international agreements (ITPGRFA, Nagoya)
  — report accession sources and material transfer agreements.

## Publication norms

- Journals: Agronomy Journal, Crop Science, Field Crops Research, European
  Journal of Agronomy, Journal of Animal Science, Soil Science Society of
  America Journal.
- Preprints less established than in other life sciences but growing.
- Data deposition is increasingly expected; multi-environment trial data is
  valuable for meta-analysis.

## Red flags specific to this field

- Subsamples within plots analyzed as replicates
- A recommendation from one site in one season
- Split-plot design analyzed with the wrong error term
- Yields compared across unstated or differing moisture bases
- Soil carbon gains claimed from shallow sampling without bulk density
  correction
