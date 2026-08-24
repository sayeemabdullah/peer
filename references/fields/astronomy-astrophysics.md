# Field Layer: Astronomy & Astrophysics

Covers observational astronomy, cosmology, and astrophysical modeling. The
defining constraint: **the sample is whatever the universe made visible to
your instrument**, and it cannot be randomized, resampled, or repeated.
Selection effects are therefore the central methodological issue.

## Selection effects

- **Malmquist bias**: flux-limited surveys preferentially detect intrinsically
  bright objects at large distances, so the observed population shifts with
  distance. Any claim about evolution over cosmic time must address it.
- **Eddington bias**: measurement scatter combined with a steep source-count
  distribution inflates the apparent brightness of faint sources near the
  detection limit.
- **Completeness**: state the survey's selection function explicitly — flux
  limit, sky coverage, cadence, detection efficiency as a function of source
  properties. A conclusion about a population requires knowing what the
  survey could not have seen.
- Upper limits are data. Non-detections belong in the analysis, not
  discarded (Standing Rule 6); censored-data methods exist for this and
  should be used rather than dropping non-detections.

## Small samples and one-off events

- Many results rest on a handful of objects, sometimes one (a single
  transient, a single lensed system). Report the sample size prominently and
  scope the claim to it — population inferences from a few objects need
  explicit acknowledgment of what can't be established.
- Publication bias toward unusual objects means the literature
  over-represents outliers; a peculiar object is not evidence of a common
  phenomenon.

## Systematics and calibration

- Photometric and astrometric calibration, instrumental response, extinction
  correction, and background subtraction each carry systematic uncertainty
  that usually exceeds statistical error for bright sources.
- **Cosmological parameter estimation** in particular is systematics-limited;
  report the full error budget and covariance, not just statistical error
  bars.
- Blind analysis is increasingly used in cosmology precisely because
  confirmation bias toward concordance values is a documented risk — say
  whether the analysis was blinded.

## Models, simulations, and fitting

- Simulations require stated resolution, box size, subgrid physics, and
  initial conditions. Subgrid prescriptions are tuned, and results sensitive
  to that tuning should be identified as such.
- Model fits need the priors stated for Bayesian work, with sensitivity to
  prior choice examined — poorly constrained parameters are prior-dominated,
  and reporting a posterior without noting this overstates what the data
  says.
- Distinguish what the model reproduces from what it explains; matching an
  observed relation is consistent with a mechanism, not proof of it.
- Degeneracies between parameters should be shown (corner plots), not
  collapsed into marginal error bars that hide them.

## Archival data and reproducibility

- Most data comes from public archives (MAST, ESO, SDSS, Gaia, ALMA). State
  the program ID, pipeline version, and data release — reductions change
  materially between releases and results are not comparable across them.
- Software versions matter (astropy, CASA, and instrument pipelines); cite
  and version them.
- Code and derived catalogs are increasingly released; journals in the field
  now offer software citation and reproducibility badges.

## Publication norms

- arXiv is the de facto record; posting on acceptance (or at submission) is
  universal.
- Journals: ApJ, MNRAS, A&A, AJ, Nature Astronomy.
- Large surveys and collaborations have internal review and publication
  policies that precede journal submission.
- Telescope time proposals are a distinct writing genre closer to
  `grant-writing.md` than to a manuscript.

## Red flags specific to this field

- A population claim with no stated selection function
- Non-detections excluded rather than treated as upper limits
- Evolution over redshift claimed without addressing Malmquist bias
- Posterior constraints reported without prior sensitivity for weakly
  constrained parameters
- Data release or pipeline version unstated
