# Field Layer: Marketing & Consumer Research

Covers consumer behavior experiments, marketing analytics, and
choice modeling. The behavioral side inherits `psychology.md` — including
its replication crisis, which hit this field directly and has left specific
expectations in its wake.

## The replication context

Consumer behavior research was heavily affected by the credibility crisis:
several prominent effects failed to replicate, and the field has had
high-profile data fraud cases. The consequence is that reviewers now
actively look for the practices that produce unreliable findings.
- Small-N single-study papers demonstrating a surprising effect through a
  chain of mediators are the pattern most associated with unreliability.
- Multi-study papers where every study "works" are statistically improbable
  given realistic power; excessive success is itself a warning sign, and
  reviewers may run tests for it.
- Preregistration and open materials are now normal expectations at the top
  journals, not optional extras.

## Experimental practice

- **Preregister** the hypothesis, sample size, exclusions, and primary
  dependent variable (`preregistering-hypotheses.md`). Determine N in
  advance and don't add participants after peeking.
- Report **all** conditions run, all measures collected, and all exclusions,
  with the rule stated in advance. Selective reporting of conditions is the
  characteristic failure here.
- Effect sizes with intervals, not just significance.
- **Manipulation checks** confirm the manipulation worked; when they fail,
  report it. Note that manipulation checks placed before the DV can
  themselves alter responses.
- Attention and comprehension checks should be pre-stated as exclusion
  criteria, not applied post hoc when results disappoint.

## Mediation and process claims

- Statistical mediation from cross-sectional measurement does not establish
  process. Baron–Kenny and bootstrapped indirect effects are widely used and
  widely over-interpreted — they are consistent with the proposed causal
  chain, not evidence for it over alternatives.
- Stronger process evidence: **experimental manipulation of the mediator**
  (moderation-of-process designs), or measuring the mediator in a separate
  study. Say which was done.
- Serial multi-mediator models estimated on a few hundred participants are
  badly underpowered; mediation requires substantially larger samples than
  detecting the total effect.

## Samples

- **Online panels** (MTurk, Prolific, CloudResearch) dominate. Report the
  platform, screening, attention-check policy, and compensation. Prolific
  and MTurk populations differ, and MTurk data quality issues — bots, VPN
  farming, non-naive participants — require documented screening.
- **Participant non-naivety** is a real problem: frequent participants have
  seen common paradigms before, which attenuates effects.
- Student samples generalize poorly to consumer populations for many
  effects; state the limitation.
- Where the claim is about actual purchasing, hypothetical choice tasks are
  weak evidence — incentive-compatible designs or field data are stronger.

## Marketing analytics and field data

- Observational marketing data raises the causal problems in
  `data-science.md`: targeting means treated customers differ from
  untreated ones, and self-selection into campaigns is the norm.
- **Attribution modeling** (assigning conversion credit across touchpoints)
  is correlational; last-touch and multi-touch models are not causal
  measurement. Incrementality testing (geo experiments, holdout groups,
  ghost ads) is the appropriate design for a causal claim.
- Advertising effect sizes from observational data are typically much larger
  than from experiments on the same campaigns — treat observational lift
  estimates as upper bounds.
- Choice models (conjoint, discrete choice) need the design, attribute
  levels, and identification assumptions stated; hypothetical bias in
  stated-preference work is well documented.

## Ethics and disclosure

- Deception is common and requires debriefing.
- Industry funding and consulting relationships require disclosure; findings
  supporting a sponsor's product warrant explicit statement of sponsor role.
- Field experiments on customers raise consent questions — A/B testing is
  routine commercially but research publication triggers IRB obligations.

## Publication norms

- Journals: Journal of Consumer Research, Journal of Marketing Research,
  Journal of Marketing, Marketing Science, Journal of Consumer Psychology.
- JCR, JMR and others require data and materials availability and have
  adopted disclosure standards.
- Registered Reports available at several venues.
- Preprints less established than in psychology but growing.

## Red flags specific to this field

- A multi-study paper where every study succeeds at N ≈ 100 per cell
- Process claimed from measured mediation alone
- Exclusions or attention-check criteria not pre-stated
- Observational advertising lift presented as causal effect
- Purchase intent from a hypothetical task described as behavior
