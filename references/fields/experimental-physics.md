# Field Layer: Experimental Physics

Covers particle physics, nuclear physics, condensed matter, optics, and
experimental measurement generally. Statistical culture here is stricter
than in most fields, and the vocabulary differs — map onto it rather than
importing conventions from the life sciences.

## Systematic uncertainty is the real work

- **Statistical uncertainty** shrinks with more data; **systematic
  uncertainty** does not. A measurement quoted without a systematic budget
  is incomplete, and in most modern experiments systematics dominate.
- Expect an itemized systematic budget: calibration, detector response,
  background modeling, luminosity, selection efficiency, theory/model
  dependence — each estimated by a stated procedure, with correlations
  between them addressed rather than assumed independent.
- Ask how each systematic was estimated. "Varied the parameter by ±1σ and
  took the difference" is standard but only as good as the ±1σ, and
  double-counting between correlated sources is a common error.

## Blind analysis

The field's characteristic safeguard against experimenter bias: the analysis
is finalized before the answer is visible.
- Techniques: hiding the signal region, adding an unknown offset to the
  result, using scrambled or salted data, or fixing all cuts on simulation
  and control samples.
- **Unblinding is a one-time event.** Changing the analysis after unblinding
  requires disclosure, and "we found a bug after unblinding" needs to be
  stated plainly. This is Standing Rule 1 in its physics form, and it is
  taken seriously here.
- If an analysis was not blinded, that's worth noting — it doesn't
  invalidate the result, but it changes how much cut optimization should be
  scrutinized.

## Significance conventions

- **5σ for discovery, 3σ for evidence** is the particle physics convention.
  It exists because of the look-elsewhere effect and the field's history of
  3σ fluctuations that evaporated.
- **The look-elsewhere effect** must be addressed: a bump searched for
  across a mass range is far more likely to appear somewhere by chance than
  at a pre-specified location. Report both local and global significance,
  and say how the trials factor was computed.
- The frequentist machinery (CLs, profile likelihood, Feldman–Cousins) has
  specific properties; state which was used. For exclusion limits, CLs is
  standard specifically to avoid excluding parameter space the experiment
  has no sensitivity to.
- Report a confidence interval or limit, not just a p-value — and where the
  result is a null, state the sensitivity, since an exclusion is only
  meaningful relative to what could have been seen.

## Reproducibility and comparison

- Independent confirmation by a separate experiment or collaboration is the
  standard for a discovery claim, not internal cross-checks alone
  (`replication-check.md`).
- When a result disagrees with a previous measurement, quantify the tension
  in σ and address it rather than noting it in passing.
- Report the full detector configuration, run conditions, trigger, data-
  taking period, and simulation versions. Analysis code and derived data are
  increasingly released (open data initiatives), though full raw data rarely
  is.

## Authorship and collaboration norms

- Large collaborations publish with alphabetical author lists of hundreds to
  thousands; individual contribution is documented internally rather than by
  author position. Don't apply first/last-author conventions from other
  fields.
- Internal review within the collaboration precedes journal submission and
  is often more demanding than external peer review.

## Publication norms

- arXiv preprints are universal and typically precede or accompany journal
  submission — arXiv is the field's de facto record.
- Journals: Physical Review Letters, Physical Review D/B, JHEP, Nature
  Physics.
- Conference proceedings carry less weight than in computer science.

## Red flags

- A measurement quoted with statistical uncertainty only
- A bump hunt reporting local significance without a trials factor
- Analysis cuts optimized on the signal region itself
- Post-unblinding changes not disclosed
- Tension with an existing measurement acknowledged but not quantified
