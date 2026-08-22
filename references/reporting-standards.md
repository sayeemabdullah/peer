# Reporting Standards

Ensures the write-up follows the field-appropriate reporting guideline
rather than an ad-hoc structure. Check the loaded field file
(`references/fields/*.md`) for which guideline applies before drafting or
reviewing a methods/results section.

## Common guidelines by design (cross-reference the field file for specifics)

- **CONSORT** — randomized controlled trials (clinical, and increasingly
  used as a model for RCTs in other fields)
- **PRISMA** — systematic reviews and meta-analyses
- **STROBE** — observational studies (cohort, case-control, cross-sectional)
- **ARRIVE** — animal research
- **TRIPOD** — prediction model studies (diagnostic/prognostic)
- **CHEERS** — health economic evaluations
- **APA Style / JARS** — psychology reporting standards (distinct from APA
  citation format — JARS covers what must be reported, not formatting)
- Field-specific ML reporting norms (dataset documentation, hyperparameters,
  compute, evaluation protocol) — see `references/fields/machine-learning.md`

If the user names a guideline, use its actual checklist rather than a
generic structure resembling it — these have specific, numbered items for a
reason, and reviewers/editors at guideline-adopting journals check against
them directly.

## What to check regardless of which specific guideline applies

- Every item the guideline requires is present, not just the ones that make
  the study look strongest
- Reporting is complete even for null or negative results (Standing Rule 6)
  — a reporting guideline exists partly to prevent selective reporting, and
  skipping the checklist for inconvenient results defeats its purpose
- Effect sizes and uncertainty intervals appear wherever significance is
  reported (Standing Rule 3)
- The abstract's claims are consistent with what the results section
  actually supports — a very common place for reporting standards to quietly
  slip, since abstracts get revised last and under the most word-count
  pressure

## When no formal guideline applies

Not every study design has a named checklist. In that case, use the general
backbone in `references/fields/general.md` (method detail sufficient to
replicate, all outcomes reported, effect sizes with intervals, exclusions
and their rationale stated, data/code availability) and say plainly that no
formal guideline exists for this specific design.

## Working with the user

This sub-skill is best used as a checklist walkthrough against an existing
draft (pair with `manuscript-drafting.md`) rather than as a way to generate
report structure from nothing — reporting standards describe what must be
present, not how to write it well.
