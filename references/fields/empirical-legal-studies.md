# Field Layer: Empirical Legal Studies

Covers quantitative and empirical research on law and legal institutions:
judicial behavior, litigation outcomes, regulatory effects, and law-and-
economics. Inherits `social-science.md` and `economics.md` for
identification; the distinctive problems come from **how legal data is
generated** — by institutions, for their own purposes, with heavy selection
at every stage.

## Selection at every stage

- **Selection into litigation**: disputes that settle never become cases.
  The Priest–Klein selection hypothesis implies litigated cases are
  systematically unrepresentative — roughly, the close ones — so win rates
  among litigated cases say little about the underlying distribution of
  legal merit.
- **Selection into appeal**: appealed cases are not representative of trial
  outcomes, and published appellate opinions are not representative of
  appeals.
- **Publication and availability bias**: many decisions are unpublished,
  and unpublished ones differ systematically. Databases (Westlaw, Lexis,
  CourtListener) have different coverage, and coverage varies by
  jurisdiction, court level, and era. State the source and its known gaps.
- Guilty pleas, settlements, and dismissals are the overwhelming majority of
  case dispositions; studies of trials describe a small, unusual slice.

Name which selection stages apply and what they do to the estimate — this is
the field's central methodological demand.

## Identification

- Legal changes are rarely random. Exploiting variation requires a strategy:
  staggered adoption of a statute across states, judicial assignment where
  it is genuinely random, regression discontinuity at a statutory threshold,
  or a natural experiment from an unanticipated ruling.
- **Random judicial assignment** is a powerful instrument where it truly
  holds — verify it rather than assuming, since many courts deviate in
  practice through specialization, recusal, and docket management.
- Staggered policy adoption with two-way fixed effects is biased under
  heterogeneous effects; use a modern estimator (`economics.md`).
- Anticipation effects matter: parties adjust behavior before a law takes
  effect, contaminating pre-periods.

## Coding legal materials

- Turning cases, statutes, or opinions into variables is annotation, and it
  requires the discipline in `natural-language-processing.md`: written
  protocol, multiple coders, chance-corrected agreement, and adjudication
  procedure. "The author read and coded the cases" is not a documented
  method.
- Coding ideological direction of decisions, case outcomes, or issue areas
  involves contestable judgments; existing coded datasets (Supreme Court
  Database, and similar) have documented conventions and known criticisms —
  cite the version and be aware of the debates.
- Automated extraction from legal text should be validated against
  hand-coded samples with reported accuracy.

## Doctrinal vs. empirical claims

- Distinguish what the law *is* (doctrinal analysis, an interpretive
  exercise), what courts *do* (empirical), and what the law's *effects* are
  (causal). These require different evidence, and sliding between them is
  common.
- A statistical regularity in judicial outcomes is not a claim about legal
  reasoning; judges' stated reasons and behavioral patterns are different
  objects.
- Normative and policy recommendations should be separated from empirical
  findings and labeled as such.

## Interdisciplinary review

Empirical legal work is often reviewed by lawyers without statistical
training, or by social scientists without legal training. Write for both:
explain the legal institution well enough for a methodologist, and the
identification strategy well enough for a lawyer. Weaknesses that a
non-specialist reviewer misses are still weaknesses (Standing Rule 10).

## Ethics and data

- Court records are public but contain identifiable and sensitive
  information; aggregation and suppression may still be warranted,
  particularly for juvenile, immigration, family, and sealed matters.
- Research with incarcerated people is subject to specific additional
  protections (in the US, 45 CFR 46 Subpart C) — prisoners are a formally
  protected population.
- Access agreements with courts or agencies may restrict publication;
  disclose restrictions.

## Publication norms

- Two distinct publication cultures. **Student-edited law reviews** dominate
  legal academia: no peer review, long articles with extensive footnotes,
  multiple simultaneous submissions permitted, and expedited-review norms.
  **Peer-reviewed journals** (Journal of Empirical Legal Studies, Journal of
  Law and Economics, Law & Society Review, JLA) follow standard academic
  practice.
- Empirical work generally belongs in the peer-reviewed venues; a
  methodologically demanding paper in a law review will not receive
  methodological review (`submission-strategy.md`).
- SSRN posting is the norm and is expected early.

## Red flags

- Win rates among litigated cases interpreted as merit
- Published opinions treated as a sample of decisions
- Case coding by a single author with no protocol or reliability check
- A statute's adoption treated as exogenous with no argument
- Doctrinal argument and causal claim interleaved without distinction
