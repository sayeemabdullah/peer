# Field Layer: Education Research

Covers K-12 and higher education research: curriculum and instructional
interventions, learning sciences, assessment, and education policy. For
computing education specifically, use `computer-science-education.md`, which
covers the same ground with discipline-specific concerns.

## Clustering is structural

- Students are nested in classrooms, teachers, schools, and districts, and
  interventions are almost always delivered at the class or school level.
- **Cluster randomized trials** are the standard design. The sample size
  calculation must use the ICC — the number of *clusters* drives power far
  more than the number of students. Twenty classrooms with 500 students is
  a study with n≈20 for cluster-level effects, not n=500.
- Analyze with multilevel models or cluster-robust standard errors. Treating
  students as independent is the field's most common statistical error and
  produces false positives at high rates.
- Report the ICC used in planning and the one observed.

## Identification when randomization isn't possible

Much education research is quasi-experimental. See `social-science.md` for
identification strategy; specific to this field:
- **Selection into schools and programs** is strong and non-random —
  families choose schools, students select courses, and schools assign
  students to tracks.
- Difference-in-differences designs need the parallel-trends assumption
  examined, not asserted; multiple pre-periods help.
- Regression discontinuity around cut scores (admission, remediation
  placement) is a strong design where a cutoff exists — check for
  manipulation of the running variable.
- Prior achievement is the dominant predictor of later achievement;
  baseline equivalence must be established and reported.

## Outcome measurement

- **Standardized, validated assessments** where they exist. Researcher-made
  tests aligned to the intervention's content are biased toward the
  intervention — this is a real and frequently unaddressed problem when the
  developer also writes the test.
- Report the assessment's reliability and its alignment to both conditions,
  not just the treatment condition.
- Distinguish proximal outcomes (what was directly taught) from distal
  (transfer, later achievement). Proximal gains often don't transfer, and
  claiming general learning improvement from a proximal measure is
  overclaiming.
- **Effect sizes in education context**: report standardized effects with
  intervals, and interpret them against realistic benchmarks for the
  population and outcome rather than generic conventions — typical effects
  in field trials with standardized outcomes are small, and a "small" effect
  can be policy-relevant.
- Report cost alongside effect where a policy claim is made; cost-effectiveness
  matters more than effect size for adoption decisions.

## Attrition and implementation

- **Differential attrition** between conditions threatens validity badly;
  What Works Clearinghouse standards specify tolerable levels, and reviewers
  apply them. Report overall and differential attrition.
- **Implementation fidelity**: was the intervention delivered as designed?
  Dosage received, not just assigned. A null result without fidelity data is
  uninterpretable (see `nursing-health-services.md`).
- Business-as-usual comparison conditions vary; describe what the control
  group actually experienced, since "no intervention" is never what happens.

## Reporting standards

- **WWC standards** (What Works Clearinghouse) define what counts as meeting
  evidence standards for causal claims in US education — designing to them
  from the start avoids a study that can't be included in evidence reviews.
- **CONSORT** adapted for cluster trials; **SREE** and AERA reporting
  standards for empirical education research.
- Registries: the Registry of Efficacy and Effectiveness Studies (REES) and
  AEA/OSF registries. Preregistration is increasingly expected for
  efficacy trials.

## Ethics

- IRB review plus district and school permission; parental consent and
  student assent for minors.
- Educational privacy law (FERPA in the US, GDPR in the EU) governs student
  records.
- Equipoise: withholding a promising intervention from control students
  needs justification; waitlist and stepped-wedge designs address it.
- The teacher-researcher dual role raises the same coercion concern as in
  `computer-science-education.md`.

## Publication norms

- Journals: AERJ, Educational Researcher, Journal of Educational Psychology,
  Educational Evaluation and Policy Analysis, Review of Educational Research.
- Preprints (EdArXiv) accepted and growing.
- Data sharing constrained by student privacy; restricted-access deposits
  are common.

## Red flags specific to this field

- Students analyzed as independent in a class-level intervention
- Researcher-developed outcome measure aligned only to the treatment
- Attrition unreported or non-differential attrition assumed
- A proximal learning gain described as improved achievement generally
- Cross-cohort comparison presented as a controlled evaluation
