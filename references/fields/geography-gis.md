# Field Layer: Geography & Spatial Analysis

Covers GIS, spatial statistics, remote sensing, and quantitative human and
physical geography. The distinctive methodological problem: **spatial data
violates the independence assumptions of standard statistics**, and the
units of analysis are usually arbitrary administrative boundaries rather
than meaningful entities.

## Spatial autocorrelation

- Tobler's first law — near things are more related than distant things —
  means spatial observations are not independent. Standard errors from OLS
  on spatial data are too small, and significance is overstated.
- Test for it (Moran's I, Geary's C, LISA for local clustering) and report
  the result, then use a model that accounts for it: spatial lag, spatial
  error, GWR, or spatial random effects. Report the spatial weights matrix
  used — contiguity, distance band, k-nearest — since conclusions can shift
  with the choice, and its selection should be justified rather than
  defaulted.
- Residual spatial autocorrelation after modeling indicates a missing
  spatially structured covariate; check and report it.

## MAUP and the ecological fallacy

- **The Modifiable Areal Unit Problem**: results depend on both the *scale*
  of aggregation (census tract vs. county) and the *zoning* (how boundaries
  are drawn at a given scale). Correlations can change magnitude and even
  sign across zonings of the same underlying data.
- Report the unit of analysis and, where feasible, sensitivity across
  scales. A finding stable across scales is much stronger than one shown at
  a single convenient unit.
- **The ecological fallacy**: an area-level association does not license an
  individual-level claim (see `epidemiology-public-health.md`). Administrative
  units are not people.
- Boundaries change over time (census redistricting); longitudinal
  comparisons need harmonized geographies, and the harmonization method
  should be stated.

## Spatial data quality

- **Geocoding** has error that varies systematically by area type — rural
  addresses and informal settlements geocode worse. Report match rate and
  method; unmatched records are usually not missing at random.
- Positional accuracy, coordinate reference system, and projection must be
  stated. Area and distance calculations are projection-dependent, and using
  an inappropriate projection introduces real error.
- Edge effects: units near the study boundary have truncated neighborhoods,
  biasing local statistics. State how boundaries were handled.
- Point pattern analysis requires a defined study region; results depend on
  it.

## Remote sensing

- Report sensor, spatial and temporal resolution, acquisition dates, cloud
  masking, and atmospheric correction. Composite products hide the dates
  contributing to each pixel.
- **Classification accuracy** needs an independent validation sample with a
  documented sampling design, reported as a confusion matrix with per-class
  producer's and user's accuracy — overall accuracy alone hides poor
  performance on rare classes. Report confidence intervals on accuracy.
- Validation points must be spatially independent of training points;
  randomly splitting spatially clustered samples leaks information and
  inflates accuracy substantially.
- Change detection between two dates confounds real change with differences
  in sensor, season, illumination, and atmospheric conditions.

## Ethics and privacy

- Location data is identifying. Home location can be inferred from
  surprisingly coarse traces, and standard anonymization often fails.
- Geomasking, aggregation, and small-cell suppression are needed before
  publishing maps of sensitive attributes (health conditions, income,
  immigration status). Point maps of individual cases are rarely publishable.
- Mapping can enable harm to communities — informal settlements, Indigenous
  lands, and vulnerable populations. Consider who benefits from a map's
  existence and whether the mapped community was consulted.
- Indigenous data sovereignty frameworks (CARE principles) may apply
  alongside FAIR.

## Publication norms

- Journals: IJGIS, Annals of the AAG, Geographical Analysis, Remote Sensing
  of Environment, Computers Environment and Urban Systems, Transactions in
  GIS.
- Human geography has a strong qualitative and critical tradition — for
  that work see `qualitative-research.md`; applying spatial-statistical
  standards to critical geography is a category error.
- Data and code sharing increasingly expected; base data licensing (OS,
  commercial imagery) may constrain redistribution.

## Red flags specific to this field

- Regression on areal data with no test for spatial autocorrelation
- Findings reported at one aggregation unit with no scale sensitivity
- Area-level association interpreted as individual-level
- Classification accuracy from validation points spatially adjacent to
  training points
- Maps of sensitive individual-level data without geomasking
