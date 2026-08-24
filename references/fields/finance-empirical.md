# Field Layer: Empirical Finance

Covers asset pricing, corporate finance, market microstructure, and
quantitative investment research. Inherits `economics.md` for identification
and inference; the distinctive problem is that **the same datasets have been
mined by thousands of researchers**, so a nominally significant result means
much less here than the p-value suggests.

## The multiple-testing problem is structural

- Hundreds of published "factors" predict returns. Given how many have been
  tested across the same handful of datasets (CRSP, Compustat), conventional
  thresholds produce many false positives, and much of the factor zoo does
  not survive scrutiny.
- **Raise the bar**: a substantially higher t-statistic threshold than 1.96
  is now commonly argued for new factor claims, and multiple-testing
  adjustments across the tested universe are increasingly expected.
- Report how many specifications, signals, and variations were examined —
  not just the reported one. This is Standing Rule 6 in a setting where
  ignoring it is the norm.
- Out-of-sample and post-publication performance is the real test: many
  documented anomalies decay or vanish after publication. A finding's
  survival in data the researcher could not have mined is worth far more
  than in-sample significance.

## Backtest overfitting

- A strategy tuned on historical data will look good on that data by
  construction. Report the number of configurations tried; the more trials,
  the higher the expected in-sample Sharpe ratio purely by chance.
- Use held-out periods, walk-forward analysis, or deflated performance
  measures that adjust for the number of trials.
- **Transaction costs, market impact, shorting costs and constraints, and
  capacity** must be modeled. Many published anomalies concentrate in small,
  illiquid, high-cost stocks and disappear net of realistic costs. A gross
  return without costs is not an investable result.
- Report turnover and the return net of estimated costs, plus performance
  excluding microcaps and penny stocks.

## Data pitfalls

- **Survivorship bias**: databases that drop delisted or failed firms and
  funds overstate returns. Confirm the data includes dead entities, and
  handle delisting returns explicitly — omitting them biases small-stock
  results substantially.
- **Look-ahead bias**: accounting data isn't available on the fiscal period
  end date. Lag fundamentals appropriately (a reporting gap of several
  months is the convention) and use point-in-time data where possible.
- **Backfill and incubation bias** in fund and hedge fund databases: funds
  report history only after they succeed. Exclude backfilled observations.
- **Restatements**: databases often reflect restated figures unavailable at
  the time. Point-in-time snapshots address this.
- Time-zone and stale-price issues in international and illiquid assets
  create spurious predictability.

## Statistical practice

- Standard errors must handle both cross-sectional correlation and
  time-series persistence — double-clustering by firm and time, or
  Fama–MacBeth with Newey–West adjustment. Plain OLS standard errors on
  panel return data are badly understated.
- Persistent regressors (dividend yield, valuation ratios) in predictive
  regressions produce biased coefficients and over-rejection; use the
  corrections developed for it rather than reporting naive t-stats.
- Report economic magnitude, not only significance: a statistically
  significant predictor with negligible economic value isn't a finding
  (`effect-size-over-significance.md`).
- Specify whether returns are equal- or value-weighted; conclusions
  frequently differ, and reporting only the flattering weighting is
  selective reporting.

## Event studies and corporate finance

- State the event window, estimation window, and benchmark model; results
  are sensitive to all three.
- Event date determination matters — information often leaks before the
  formal announcement.
- Clustered event dates violate cross-sectional independence; adjust.
- Endogeneity is pervasive in corporate finance: firms choose their capital
  structure, governance, and disclosure. Causal claims need an
  identification strategy (`economics.md`), and matching on observables is
  usually insufficient.

## Conflicts and data access

- Industry affiliation, fund ownership, and consulting relationships require
  disclosure; results supporting a strategy the authors sell warrant
  scrutiny.
- Proprietary data restricts replication; describe access conditions so
  others can pursue it.
- Code and data construction details should be released — much of the
  irreproducibility in this field comes from undocumented sample filters.

## Publication norms

- Journals: Journal of Finance, Journal of Financial Economics, Review of
  Financial Studies, Journal of Financial and Quantitative Analysis.
  Review is slow and demanding.
- SSRN working papers are the field's primary early circulation.
- Replication studies are increasingly published and have materially changed
  which findings are believed.

## Red flags specific to this field

- A new factor reported at t ≈ 2 with no multiple-testing adjustment
- Backtest results with no transaction costs, capacity, or turnover
- Fundamentals used without a reporting lag
- Fund performance from a database with backfilled history
- Panel return regressions with unclustered standard errors
