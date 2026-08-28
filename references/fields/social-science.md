# Field Layer: Social Science

Covers sociology, political science, economics, and related fields working
primarily with observational, survey, and quasi-experimental data. Where a
subfield has its own strong convention that diverges from what's below, defer
to it and say so.

## Reporting standards

- No single dominant checklist across all of social science, but STROBE
  applies well to observational designs borrowed into this space, and
  field-specific journals often have their own reporting norms (e.g.,
  AEA's data and code availability policy in economics, APSA's data access
  and research transparency (DA-RT) principles in political science).
- Preregistration is newer and less universal here than in psychology, but
  growing fast, especially for experimental and quasi-experimental work
  (e.g., via the AEA RCT Registry for economics field experiments, or EGAP
  for political science). Recommend the field-appropriate registry directly
  when locking a plan.
- Pre-analysis plans (PAPs) are the field's typical name for what other
  fields call preregistration — same function, same Standing Rule 1
  discipline: specified before the outcome data is examined.

## Causal identification is the central methodological concern

- Much of this field works with observational or quasi-experimental data
  where a causal claim needs an explicit identification strategy: natural
  experiment, instrumental variables, regression discontinuity,
  difference-in-differences, matching, or a randomized design. If a causal
  claim is being made, ask what identifies it — "controlling for
  confounders in a regression" alone is a weak identification strategy and
  should be flagged as such (cross-reference `method-selection.md`).
- Check the assumptions the identification strategy actually requires (e.g.,
  parallel trends for diff-in-diff, exclusion restriction for
  instrumental variables, continuity at the cutoff for RDD) and whether
  they're tested or at least argued for, not just assumed silently.

## Adequate sample size / power

- For survey research, consider both statistical power for the
  hypothesis of interest and the sample's representativeness of the target
  population — a well-powered but unrepresentative sample supports precise
  estimates of the wrong population.
- For quasi-experimental designs (RDD, diff-in-diff), power depends on
  design-specific factors (bandwidth choice, number of time periods/units)
  beyond simple sample size — route to `power-analysis.md` but note the
  design-specific power calculation may need specialized methods.
- For qualitative or mixed-methods social science, "sample size" isn't the
  right frame — saturation and case selection logic apply instead; if the
  work is qualitative, say plainly that this skill's quantitative-leaning
  defaults apply loosely here and defer to the user's qualitative
  methodological training.

## Ethics/IRB specifics

- Human subjects review applies to survey and interview-based research as
  much as experimental work; secondary analysis of public administrative or
  survey data sometimes qualifies for exempt status, but that determination
  belongs to the IRB.
- Field experiments involving deception or withholding a beneficial
  treatment (common in economics and political science field experiments)
  carry specific ethical scrutiny, similar in kind to psychology's deception
  concerns.
- Confidentiality and disclosure risk are a particular concern with
  administrative or small-population data, where individuals can sometimes
  be re-identified even from "de-identified" records.

## Publication norms

- Working papers (NBER, SSRN, field-specific working paper series) serve a
  similar role to preprints elsewhere and are the field-standard way to
  circulate work before formal publication.
- Data and code replication packages are increasingly required at
  submission by major journals in economics and political science
  specifically — this is a firmer expectation here than in some other
  fields, not just a general best practice.

## Red flags

- A causal claim resting only on a regression with controls, with no
  explicit identification strategy
- A regression discontinuity or diff-in-differences result without checking
  or reporting its core identifying assumption
- Specification search — running many control-variable combinations and
  reporting the one that reaches significance — presented as a single
  clean specification (`avoiding-p-hacking.md`)
