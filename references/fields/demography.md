# Field Layer: Demography & Population Studies

Covers fertility, mortality, migration, household structure, and population
projection. Inherits `social-science.md` and `epidemiology-public-health.md`;
what's distinctive is a mature formal apparatus — **rates, exposure, and
cohort-vs-period reasoning** — that must be applied correctly before any
substantive claim.

## Rates require correct exposure

- A demographic rate is events divided by person-time at risk, not by
  population count. Getting the denominator wrong is the field's most basic
  error and it propagates everywhere.
- The denominator must be the population actually at risk — age-specific
  fertility rates use women in the age group, not all people; occupational
  mortality needs the employed population.
- **Standardize before comparing populations** with different age
  structures. Crude rates comparing a young and an old population measure
  age structure. Report the standard used, or use directly/indirectly
  standardized measures and say which.
- Decomposition methods (Kitagawa, Arriaga, Das Gupta) separate compositional
  change from rate change; a change in a crude measure should be decomposed
  before it is interpreted.

## Period vs. cohort

- **Period measures** describe a moment under synthetic-cohort assumptions;
  **cohort measures** describe a real birth cohort's experience. They answer
  different questions and diverge substantially when timing shifts.
- **Tempo effects**: when the age at childbearing rises, period TFR falls
  below completed cohort fertility even with no change in family size. A
  fertility decline announced from period TFR without addressing tempo may
  be measuring postponement, not quantum. Tempo-adjusted measures exist —
  use them or acknowledge the limitation.
- Age-period-cohort effects are not separately identifiable without
  assumptions; any APC decomposition rests on an identifying restriction
  that must be stated and justified rather than buried in the method.

## Life tables and survival

- State whether the life table is period or cohort, the age intervals, and
  the method for the open-ended age group — closure assumptions materially
  affect life expectancy at older ages.
- Life expectancy at birth is a period synthetic measure, not a forecast of
  how long today's newborns will live. This is routinely misstated in
  abstracts and press.
- Report the smoothing or graduation method applied to noisy age-specific
  rates, especially for small populations.

## Projections

- Projections are conditional on assumptions, not predictions. State the
  fertility, mortality, and migration assumptions explicitly and present
  variants rather than a single line.
- **Migration is the least predictable component** and typically dominates
  uncertainty in projections for high-income countries; deterministic
  scenarios understate that uncertainty. Probabilistic projections
  communicate it better.
- The jump-off population's quality propagates through the whole projection.
- Report the horizon honestly — uncertainty grows quickly, and long-horizon
  projections are illustrative rather than informative.

## Data quality

- **Census and register data** have coverage error, age heaping, and
  differential undercount concentrated in exactly the populations of
  interest (young men, migrants, minorities, informal settlements). Report
  known coverage issues and any adjustment applied.
- Survey data (DHS, MICS, LFS) has complex sampling designs — use the survey
  weights and design-based standard errors, not naive ones. Failing to apply
  weights is common and biases estimates.
- Retrospective birth and death histories suffer recall error and
  displacement of dates; sibling-survival methods for maternal mortality
  have wide uncertainty that is often under-reported.
- Vital registration completeness varies; indirect estimation methods exist
  and their assumptions should be stated.
- Small-area estimates need explicit uncertainty; model-based small-area
  estimates borrow strength across areas at the cost of assumptions.

## Ethics

- Population data can identify individuals in small cells; statistical
  disclosure control (suppression, swapping, differential privacy) is
  applied by statistical agencies and affects analysis — recent census
  privacy protections introduce noise that matters for small-area work and
  should be accounted for.
- Research on migration and undocumented populations carries risk to
  participants; data security and reporting obligations need planning.
- Population policy work has a history of coercive application; framing
  around "overpopulation" or targeting specific groups' fertility warrants
  care.

## Publication norms

- Journals: Demography, Population and Development Review, Population
  Studies, European Journal of Population, Demographic Research (open
  access).
- SocArXiv preprints accepted.
- Replication materials expected; the Human Mortality Database and
  Human Fertility Database are standard shared resources.

## Red flags

- Crude rates compared across populations with different age structures
- Period TFR decline interpreted as reduced family size without tempo
  discussion
- Life expectancy at birth described as how long people will live
- Projections presented as predictions, with a single scenario
- Complex survey data analyzed without weights or design-based errors
