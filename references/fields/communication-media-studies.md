# Field Layer: Communication & Media Studies

Covers media effects, political communication, journalism studies, and
audience research. Methodologically pluralistic — experimental, survey,
content-analytic, and critical/qualitative work all appear, sometimes in one
paper. Establish which the claim rests on before applying standards; for
interpretive and critical work see `qualitative-research.md`.

## Content analysis

- Quantitative content analysis is measurement and needs the full apparatus:
  a written codebook, a defined sampling frame and unit of analysis,
  multiple coders, and **chance-corrected reliability** (Krippendorff's
  alpha preferred; Cohen's kappa; percent agreement alone is not
  acceptable) reported per variable, not as a single overall figure.
- Reliability should be computed on a random subsample of the actual coded
  material, by coders working independently, and reported with the subsample
  size.
- **Automated content analysis** (dictionaries, supervised classifiers,
  topic models, LLM coding) must be validated against human coding with
  reported agreement, and classification error accounted for in downstream
  analysis (`computational-social-science.md`).
- Sampling matters: constructed weeks for news, platform sampling for social
  media, and the period covered all shape findings. State the frame and its
  limits.

## Media effects claims

- **Exposure measurement is the weak link.** Self-reported media exposure
  correlates poorly with logged behavior — people misremember, over-report
  news use, and can't recall specific content. Prefer behavioral traces,
  donated data, or experimental exposure where possible, and treat
  self-report exposure estimates as heavily attenuated.
- Cross-sectional correlations between exposure and attitudes support
  association only; selective exposure means people choose media matching
  existing views, so reverse causality is the default alternative
  explanation, not an afterthought.
- Panel designs help but need appropriate models that separate within-person
  from between-person effects (`developmental-psychology.md`).
- **Effect sizes in media effects research are typically small**, and that
  is a substantive finding rather than a failure. Small effects can matter
  at scale; report magnitudes and discuss what they mean cumulatively rather
  than inflating them.
- Lab experiments establish that an effect can occur under forced exposure;
  they don't establish that it occurs in a real information environment
  where people choose and ignore. State the gap.

## Platform and computational work

- Platform data has all the problems in `computational-social-science.md`:
  non-representative users, algorithmic mediation, API sampling, deletion.
- Algorithmic audit studies (sock puppets, donated data) each have
  limitations — puppets don't behave like people, donations are
  self-selected. State which and its bias.
- Platform research access changes frequently; report the access method and
  date, since replication may be impossible later. Say so plainly rather
  than implying reproducibility the access regime doesn't permit.

## Survey work

- Standard survey discipline applies (`social-science.md`): sampling frame,
  response rate, weighting, and mode effects.
- Opt-in online panels are not probability samples; report the panel,
  recruitment, and weighting, and don't present margins of error that assume
  probability sampling.
- Question wording strongly affects results on political and media items;
  report full question text.

## Ethics

- Deception is common in media effects experiments and requires
  justification and debriefing.
- Exposing participants to misinformation, violent, or distressing content
  requires risk assessment, and debriefing should include correction of any
  misinformation shown — corrective debriefing is imperfect, so belief
  persistence is a real concern.
- Journalist and source confidentiality applies in journalism studies;
  interview data may need stronger protection than standard anonymization.
- Platform terms of service constrain data collection and sharing.

## Publication norms

- Journals: Journal of Communication, Communication Research, New Media &
  Society, Political Communication, Digital Journalism, Journalism Studies.
- ICA and NCA conferences are significant venues; conference papers are not
  archival in the way CS proceedings are.
- Preprints (SocArXiv) accepted and increasingly common; open science
  practices are growing but uneven across the field's subareas.

## Red flags

- Content analysis with percent agreement reported instead of a
  chance-corrected statistic
- Self-reported media exposure treated as an accurate behavioral measure
- Cross-sectional exposure-attitude correlation described as an effect
- Automated coding used with no human validation
- Lab-exposure findings generalized to real media environments
