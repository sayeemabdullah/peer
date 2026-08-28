# Field Layer: Health & Assistive Technology

Covers assistive devices, accessibility research, rehabilitation technology,
digital health tools, and health-monitoring systems. Sits between HCI
(`human-computer-interaction.md`) and clinical research
(`clinical-biomedical.md`), and which one governs depends on what is being
claimed — usability, or health outcome.

## Which claim is being made?

- **Usability/accessibility claim** ("blind users can complete this task
  faster"): HCI standards apply.
- **Health outcome claim** ("this reduces falls," "improves adherence,"
  "reduces symptom severity"): clinical standards apply — trial
  registration, CONSORT, a clinically meaningful effect size, and IRB
  review. A usability study does not support a health outcome claim, and
  this substitution is the field's most common overclaim. Name it directly.

## Small samples are structural, not a flaw to hide

Populations are often small by nature (a specific disability, a rare
condition), and recruiting 200 participants may be impossible.
- Don't paper over this with an underpowered null-hypothesis test. Report
  effect sizes with intervals, use within-subjects designs where
  appropriate, and consider single-case experimental designs (N-of-1,
  multiple-baseline, ABAB withdrawal), which are methodologically rigorous
  and well-established in rehabilitation research.
- If a single-case design is used, follow its reporting standards (SCRIBE)
  and analyze it appropriately — visual analysis plus effect-size estimates
  for single-case data, not a t-test across phases.
- State the achievable-population limit plainly rather than implying the
  sample size reflects a design choice.

## Participation and framing

- **Participatory design with the actual user population** is the field
  norm and expectation. Research *about* disabled people conducted without
  disabled participants, or with proxies (caregivers, clinicians) standing
  in for them, needs strong justification — proxy reports diverge
  systematically from first-person reports.
- Check the framing for a deficit or "inspiration" register: describing
  users as burdens, or the technology as overcoming a tragedy, is both an
  ethical problem and a sign the work wasn't grounded in the community.
  Person-first vs. identity-first language varies by community (many Deaf
  and autistic people prefer identity-first) — follow the participants'
  stated preference rather than a blanket rule.
- Compensation must account for additional participation costs:
  accessible transport, personal assistance, extra time.
- Accessibility of the study procedure itself — materials, consent forms,
  and the testing environment — should be described.

## Evaluation realism

- Lab performance frequently doesn't survive contact with daily use.
  Abandonment rates for assistive devices are high, and a lab result
  showing a device works is not evidence people will keep using it. Where
  possible, report longitudinal or in-situ deployment.
- Report the comparison against the user's *existing* solution, not against
  no assistance. The relevant baseline is the workaround people already
  have, which is often better than researchers assume.
- Training time and setup burden belong in the results.

## Regulatory and ethical specifics

- Health tools may meet the definition of a medical device (FDA in the US,
  MDR in the EU), which carries regulatory obligations well beyond IRB
  approval. Flag this when a tool makes diagnostic or therapeutic claims.
- Health data is subject to privacy regimes (HIPAA, GDPR special category
  data) in addition to standard research ethics.
- Vulnerable-population protections apply where participants have
  cognitive impairment or are recruited through clinical care settings,
  where the treatment relationship can make declining feel costly.

## Publication norms

- Venues: ASSETS, CHI, ACM TACCESS for accessibility; JMIR and clinical
  informatics journals for digital health; rehabilitation engineering
  journals (IEEE TNSRE) for devices.
- Digital health outcome trials should be registered like any clinical
  trial.
- Accessible versions of papers and figures (alt text, screen-reader-
  compatible PDFs) are an expectation at ASSETS and increasingly elsewhere.

## Red flags

- A health outcome claimed from a usability study
- Research about a disabled population with no disabled participants
- Comparison against no-assistance rather than the existing workaround
- Lab-only evaluation supporting a claim about daily use
- Small N handled with an underpowered significance test rather than an
  appropriate design
