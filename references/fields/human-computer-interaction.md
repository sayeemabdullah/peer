# Field Layer: Human-Computer Interaction

Covers user studies, interaction techniques, usability research, and
qualitative studies of technology use. HCI is genuinely **mixed-methods**:
some contributions are statistical, some are qualitative, some are artifact
contributions evaluated by demonstration. Applying the wrong standard is the
most common way to misjudge an HCI paper — establish which kind it is first.

## Establish the contribution type first

- **Empirical/statistical**: a controlled study comparing conditions.
  Standard disciplines apply fully — preregistration, power, effect sizes.
- **Qualitative**: interviews, ethnography, diary studies. Rigor markers are
  different — see `qualitative-research.md`; sample size and p-values are
  the wrong frame.
- **Artifact/systems**: a novel interaction technique or system. Evaluation
  may be a demonstration, a walkthrough, or a small usability study;
  demanding a large controlled trial can be inappropriate, but the claims
  must then be scoped to what was shown.

## Controlled studies

- **Sample size**: HCI studies are often underpowered, and effects of
  interest are frequently small. Justify N in advance
  (`power-analysis.md`); a post-hoc "N=12 is typical in HCI" is not a
  justification.
- **Within-subjects designs** are common and efficient, but require
  counterbalancing (Latin square) against order and learning effects — state
  the scheme used.
- **Effect sizes and intervals**, not just significance. HCI has moved
  substantially toward estimation over dichotomous testing; reporting
  only p-values now reads as dated and draws reviewer criticism.
- **Multiple measures**: task time, error rate, satisfaction, workload
  (NASA-TLX), preference. Testing all of them and reporting the significant
  ones is p-hacking (`avoiding-p-hacking.md`) — designate the primary
  measure in advance.
- **Likert data**: single items are ordinal; analyzing them with means and
  t-tests is contested. Either use validated multi-item scales (which
  aggregate to something closer to interval), or use ordinal-appropriate
  methods, and state the choice.
- **Novelty effects**: a new interface often outperforms a familiar one
  temporarily. Short single-session studies can't distinguish novelty from
  genuine improvement — say so.

## Participants and ethics

- Recruitment source and its limits: university convenience samples,
  crowdworkers, or community recruitment each generalize differently.
  WEIRD-sample limitations should be stated plainly, not omitted.
- Compensation should be reported and should be fair — crowdwork below
  minimum wage is an ethical issue reviewers increasingly raise.
- IRB approval is expected for human-subjects work; state it.
- Accessibility of the study itself: whether disabled participants could
  take part, and whether excluding them was justified.

## Validated instruments

Use established scales where they exist (SUS, NASA-TLX, UEQ, IPQ, and
domain-specific ones) rather than ad-hoc questionnaires — they have known
psychometric properties and make results comparable across studies. If a
custom instrument is necessary, report its reliability.

## Publication norms

- Conferences (CHI, UIST, CSCW, IUI) are primary and highly selective;
  CSCW and PACM HCI use a journal-style rolling review.
- Preprints are increasingly accepted; check the venue's anonymity policy.
- Study materials, data, and analysis scripts are increasingly expected in
  supplementary material.

## Red flags specific to this field

- A small-N study reporting only p-values, with no effect size or interval
- Many measures collected, only the significant ones discussed
- A single-session comparison claiming a durable improvement
- Qualitative claims ("participants felt...") from a study with no stated
  analysis method
- An ad-hoc questionnaire used where a validated scale exists
