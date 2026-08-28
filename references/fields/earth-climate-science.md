# Field Layer: Earth & Climate Science

Covers climate modeling, atmospheric and ocean science, geology,
hydrology, and paleoclimate. Two features shape the methodology: the system
**cannot be experimentally manipulated**, and findings often carry direct
policy weight, which raises the cost of overclaiming.

## Detection and attribution

- **Detection** establishes that a change has occurred beyond internal
  variability; **attribution** assigns cause. They are separate claims
  requiring separate evidence — conflating them is the field's most
  consequential error.
- Attribution requires a counterfactual: model simulations with and without
  the forcing of interest, or a well-characterized fingerprint. State the
  method (optimal fingerprinting, model-based event attribution) and its
  assumptions.
- **Internal variability** must be characterized before a trend is called a
  signal. Short records over a system with strong multidecadal variability
  can show trends that are not forced responses.
- Event attribution statements are probabilistic ("this event was made N
  times more likely"), conditional on the framing chosen. State the framing,
  since results depend on it.

## Model ensembles

- Report which models, which ensemble (CMIP generation), which scenario
  (SSP/RCP), and how many members. A single model run conflates forced
  response with internal variability; multiple members are needed to
  separate them.
- **Models are not independent** — they share components, parameterizations,
  and code lineage, so a multi-model spread understates true structural
  uncertainty and shouldn't be treated as a random sample.
- Distinguish the three uncertainty sources — scenario, model, internal
  variability — since which dominates depends on lead time and variable.
- Model agreement is not validation. Evaluate against observations, and
  state where the model is known to perform poorly for the variable in
  question.
- Bias correction and downscaling introduce their own assumptions; state the
  method and don't let corrected output be treated as observation.

## Observations and proxies

- Instrumental records have inhomogeneities from station moves, instrument
  changes, and urbanization. State the dataset and version — reanalyses and
  homogenized products differ, and results can depend on the choice.
- **Paleoclimate proxies** measure a proxy, not the target variable. State
  the calibration, its uncertainty, the age model and its uncertainty, and
  the seasonal/spatial sensitivity of the proxy.
- Age-model uncertainty propagates into every dated inference and is
  frequently under-propagated; alignment of two records within their dating
  uncertainty is weaker evidence of synchrony than it appears.
- Reconstruction uncertainty grows backward in time as proxy coverage thins;
  report it rather than plotting a single line.

## Time series and trends

- Autocorrelation inflates apparent significance of trends; use methods
  accounting for it and report effective degrees of freedom.
- **Cherry-picked start and end dates** can produce or erase trends in a
  variable with strong interannual variability. Report sensitivity to the
  period chosen.
- Extrapolating a fitted trend beyond the data, or beyond the regime where
  the underlying physics holds, is not supported by the fit.

## Communication and policy interface

- Findings feed into assessment and policy quickly. Calibrated uncertainty
  language (the IPCC likelihood and confidence scales) exists for this
  reason — use it consistently rather than informally.
- Distinguish projection (conditional on scenario) from prediction. A
  projection under a high-emissions scenario is not a forecast.
- Be explicit about what is well established versus actively contested; the
  field is heavily scrutinized and imprecision is exploited.

## Data and reproducibility

- Data deposition and code release are strongly expected; model output
  through ESGF, observational data through the relevant archives.
- Report model version, resolution, and configuration precisely enough to
  reproduce a run.

## Publication norms

- Journals: Nature Climate Change, Nature Geoscience, JGR, GRL, Climate
  Dynamics, Journal of Climate, ESD, Cryosphere.
- EGU and Copernicus journals use fully open, public peer review with
  interactive discussion — reviews and responses are published alongside.
- Preprints (ESSOAr, EarthArXiv) accepted and common.

## Red flags

- Attribution language applied to a detection-only result
- A trend reported without accounting for autocorrelation or period
  sensitivity
- Multi-model spread presented as a full characterization of uncertainty
- Proxy reconstruction plotted without age-model or calibration uncertainty
- Projection under one scenario described as a prediction
