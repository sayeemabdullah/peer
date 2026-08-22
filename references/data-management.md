# Data Management

Covers the practical discipline of managing data and code while a study is
being run and analyzed — the infrastructure that makes everything else in
Phase 2 trustworthy and checkable later.

## Versioning and provenance

- Raw data should be kept immutable and separate from any cleaned or
  transformed version — cleaning and transformation happen in code that
  produces a new file, not by editing the raw file in place. If the user
  describes editing raw data directly (in Excel, by hand, in place), flag
  this and suggest a scripted pipeline instead.
- Every transformation from raw to analysis-ready data should be
  reproducible from code, not from memory of manual steps. Ask what the
  actual pipeline looks like if it's not already scripted.
- Use version control (git or equivalent) for analysis code at minimum;
  for data, either version control (for small/text data) or a clear
  versioned-file-naming and changelog discipline for large/binary data.
- Keep a record of *when* each version was created relative to when the
  hypothesis was locked (`preregistering-hypotheses.md`) and when results
  were first looked at — this is what makes it possible to later verify that
  the analysis matched the plan rather than drifted after the fact.

## Reproducible pipelines

- The full path from raw data to reported result should be re-runnable by
  someone else (or by the same researcher a year later) without manual,
  undocumented steps. Ask whether the current pipeline could actually be
  handed to a collaborator and rerun end to end.
- Random seeds should be fixed and recorded for any stochastic step
  (simulation, bootstrapping, train/test splits, MCMC).
- Software versions and dependencies should be recorded (requirements file,
  environment lockfile, session info) since numerical results can shift
  across versions.

## Pre-stated exclusion rules

This connects directly to Standing Rule 4 and to `preregistering-hypotheses.md`:
the data management pipeline is where exclusion rules actually get
implemented, so it's a natural place to check whether they were applied as
specified in advance, and whether the exclusion is logged (how many
observations excluded, and why) rather than silently dropped. A pipeline
that filters data without a visible, justified rule is a p-hacking risk
even if no one intended it that way — flag opaque filtering steps.

## Data and code sharing

- Increasingly expected at submission or publication (see
  `reporting-standards.md` and the loaded field file for specifics).
  Encourage planning for this early — de-identification, documentation, and
  a sensible repository (OSF, Zenodo, a field-specific repository, journal
  supplement) are much easier to prepare before submission than
  retrofitted after acceptance under deadline pressure.
- For sensitive data that can't be fully shared, plan for what can be shared
  (synthetic data, code alone, summary statistics, a restricted-access
  process) rather than defaulting to sharing nothing.

## Working with the user

This sub-skill is mostly practical infrastructure advice, not judgment
calls — when a concrete gap surfaces (no version control, no exclusion log,
no reproducible pipeline), say so plainly and suggest the specific fix
rather than a generic "you should have better data hygiene."
