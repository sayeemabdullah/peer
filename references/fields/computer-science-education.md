# Field Layer: Computer Science Education

Covers computing education research: pedagogy studies, curriculum
interventions, novice programmer behavior, and assessment. This is
**human-subjects education research**, so it inherits the discipline in
`education.md` and `human-computer-interaction.md`, plus the following.

## Classroom studies are quasi-experimental by default

- True randomization of students to conditions is often impossible or
  ethically fraught (withholding a better intervention from a class).
  Quasi-experimental designs are legitimate here, but the identification
  problem must be addressed rather than ignored — see `social-science.md`
  on identification strategy.
- **Nesting**: students are nested in sections, taught by instructors, in
  institutions. Analyzing students as independent observations understates
  standard errors, sometimes severely. Use multilevel models or cluster-
  robust standard errors, and report the clustering.
- **Instructor effects** frequently exceed intervention effects. A
  comparison across sections taught by different instructors confounds the
  two; state how this was handled.
- **Cross-term comparisons** confound the intervention with cohort
  differences, curriculum drift, and external events. Prior-term controls
  are weak; say so.

## Measurement

- **Use validated concept inventories** where they exist (e.g., the SCS1 and
  its derivatives for introductory programming) rather than instructor-made
  tests, which have unknown reliability and are often written after seeing
  what the intervention emphasized.
- **Course grades are a poor outcome measure**: they mix knowledge with
  participation, curve adjustments, and instructor discretion, and they are
  not comparable across sections or terms.
- **Pre/post gains** need the pre-test to be genuinely equivalent in
  difficulty, and need to account for ceiling and floor effects. Normalized
  gain is common but has known issues with high pre-test scores.
- Self-reported confidence is a distinct construct from learning; don't let
  a confidence gain stand in for a learning gain.

## Retention, equity, and who is measured

- **Attrition is the field's central threat**: students who drop the course
  disappear from post-test data, and they are usually not missing at random.
  A post-test showing improvement among survivors can coexist with an
  intervention that increased dropout. Report attrition by condition and
  analyze it.
- Disaggregate outcomes by prior experience — prior programming exposure
  dominates most other predictors and, if unbalanced across conditions,
  explains results that get attributed to the intervention.
- Equity claims (that an intervention narrows a gap) require reporting
  subgroup results and interaction effects, with adequate power for the
  subgroup analysis, not just an aggregate improvement.

## Ethics specific to educational settings

- Student data is subject to educational privacy law (FERPA in the US, GDPR
  in the EU) in addition to IRB review.
- **The instructor-researcher dual role** is a genuine coercion concern when
  the researcher grades the participants. Standard mitigations: consent
  collected by a third party, consent status concealed from the instructor
  until after grades are final, and no grade consequence for declining.
- Course-improvement work may qualify as exempt or non-research, but that
  determination belongs to the IRB, not the researcher.

## Publication norms

- Conferences (SIGCSE TS, ICER, ITiCSE, Koli Calling) are primary; ICER is
  the most methodologically demanding. Journals: TOCE, CSE.
- ICER and TOCE expect explicit theoretical framing and methodological
  detail; SIGCSE TS accepts experience reports, which should be labeled as
  such rather than framed as empirical findings.
- Preprints are accepted at most venues.

## Red flags

- Students analyzed as independent when nested in sections
- Course grades used as the learning outcome
- Attrition unreported, or post-test analyzed on completers only
- An instructor-made assessment written after the intervention was designed
- An experience report ("students seemed more engaged") framed as evidence
  of a learning effect
