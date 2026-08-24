# Field Layer: Health Economics & Outcomes Research

Covers cost-effectiveness analysis, health technology assessment, decision
modeling, and the economic evaluation of health interventions. Results feed
directly into reimbursement and coverage decisions, so **assumptions carry
financial weight** and are scrutinized accordingly.

## Specify the analysis before the result

- **Perspective** determines which costs count: healthcare payer, healthcare
  sector, or societal (including productivity losses and informal care).
  State it, and don't mix perspectives within one analysis. Societal
  perspective usually flatters interventions that return people to work.
- **Time horizon** must be long enough to capture all relevant costs and
  benefits — a lifetime horizon is standard for chronic disease. A short
  horizon that ends before downstream costs accrue biases the result.
- **Comparator** must be the relevant standard of care in the decision
  context, not placebo or an outdated treatment. Choosing a weak comparator
  is the most common way to manufacture cost-effectiveness.
- **Discount rate** for costs and outcomes, per the jurisdiction's guidance,
  with sensitivity analysis around it.

## Outcome measures

- **QALYs** combine length and quality of life. State the utility source,
  the instrument (EQ-5D, SF-6D, HUI), the valuation set (country-specific
  tariffs differ materially), and whose values (general population vs.
  patients — these diverge systematically).
- DALYs are used more in global health contexts; don't mix frameworks.
- The **ICER** (incremental cost-effectiveness ratio) must be incremental
  against the appropriate comparator, with dominated and extendedly
  dominated options handled correctly in a multi-option analysis.
- Willingness-to-pay thresholds are jurisdiction-specific and contested;
  state the threshold used and its source rather than treating a
  conventional figure as settled.

## Decision models

- State the model type (decision tree, Markov cohort, discrete event
  simulation, partitioned survival) and why it suits the disease process.
  Markov models assume the memoryless property — justify it or use a model
  that doesn't.
- **Every parameter needs a source**, with its uncertainty. Efficacy from
  trials, costs from unit-cost databases, utilities from validated
  instruments, epidemiology from population data.
- **Extrapolation beyond trial follow-up** is where most of the uncertainty
  lives in oncology and chronic disease models. State the survival
  extrapolation method, compare candidate parametric forms, and show
  sensitivity — different plausible curves can change the ICER enormously.
- **Model validation**: face validity, internal validation (does the model
  reproduce its inputs), cross-validation against other models, and external
  validation against observed data where available.

## Uncertainty analysis

- **Deterministic (one-way) sensitivity analysis** identifies influential
  parameters; a tornado diagram is standard.
- **Probabilistic sensitivity analysis** is expected, not optional: assign
  distributions to parameters, run Monte Carlo, and report the
  cost-effectiveness plane and CEAC (acceptability curve). A point ICER
  without PSA understates uncertainty substantially.
- **Structural uncertainty** — the model's shape and assumptions, not just
  its parameters — is usually larger than parameter uncertainty and is
  routinely under-explored. Run scenario analyses on structural choices.
- Report the value of information where the decision hinges on uncertain
  parameters.

## Reporting standards and conflicts

- **CHEERS 2022** is the reporting standard; most journals require the
  checklist.
- Industry funding is common and associated with more favorable published
  results. Disclose sponsor role in design, analysis, and publication
  rights, and state whether the sponsor could veto publication.
- Model code and parameter tables should be available enough for
  replication; full model sharing is increasingly requested by HTA bodies.
- If the analysis was conducted for a submission to an HTA body (NICE,
  ICER, CADTH, PBAC), say so, since that shapes the framing.

## Trial-based economic evaluation

- Within-trial analyses inherit the trial's limitations: protocol-driven
  costs are not real-world costs, and trial populations differ from
  treated populations.
- Missing cost and utility data is common; handle with multiple imputation
  rather than complete-case analysis, and account for the correlation
  between costs and effects (bivariate methods, bootstrapping).
- Costs are right-skewed — the arithmetic mean is the decision-relevant
  quantity despite the skew, so use methods appropriate for mean
  differences rather than transforming to medians.

## Red flags specific to this field

- A comparator that isn't current standard of care
- A point ICER with no probabilistic sensitivity analysis
- Survival extrapolated with one parametric form and no alternatives shown
- Time horizon ending before downstream costs or benefits accrue
- Industry-funded model with sponsor publication rights undisclosed
