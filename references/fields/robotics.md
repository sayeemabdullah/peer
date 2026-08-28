# Field Layer: Robotics

Covers manipulation, navigation, control, perception for robots, and
human-robot interaction. The defining methodological problem: **physical
experiments are expensive, so results are often reported from simulation**,
and the two are not interchangeable.

## Simulation vs. real hardware

- State plainly which results are simulated and which are physical. A paper
  whose abstract implies physical capability from simulation-only results is
  overclaiming, and this is the field's characteristic failure.
- **The sim-to-real gap** is the central issue: contact dynamics, friction,
  sensor noise, latency, and actuator limits are all approximated in
  simulation, and methods that exploit simulator artifacts fail on hardware.
  If transfer is claimed, show it on hardware.
- Report the simulator, version, physics engine, timestep, and any domain
  randomization applied — these determine reproducibility more than the
  algorithm does.

## Physical experiments

- **Number of trials**: single successful demonstrations are anecdotes. Report
  the number of trials attempted and the success rate, not just the
  successes (Standing Rule 6). A video of one successful grasp with no trial
  count is not evidence of a success rate.
- **Randomize initial conditions** across trials — object pose, lighting,
  clutter — and describe the distribution. Trials from a single hand-placed
  configuration measure one configuration.
- **Report failure modes**, categorized. What the robot fails at is often
  more informative than the success rate, and reviewers look for it.
- **Hardware specifics**: robot platform, sensors, calibration procedure,
  and control frequency. Results are frequently platform-specific; say so
  rather than implying generality.
- Reproducibility is genuinely hard here — hardware differs between labs
  even for the same model. Acknowledge that rather than claiming
  reproducibility the setup can't support.

## Baselines and evaluation

- Compare against baselines run on the *same* hardware and task setup.
  Numbers from another paper's table were collected on a different robot in
  a different room and are usually not comparable.
- For learned policies, report performance across multiple training seeds —
  robot learning results have high seed variance, and single-seed results
  are common and misleading (see `machine-learning.md`).
- Standardized benchmarks where they exist (RLBench, Meta-World, Behavior,
  YCB objects for manipulation) improve comparability, but check whether
  simulated benchmark performance is being generalized to physical claims.

## Safety and ethics

- Physical robots can injure people. Safety measures, operating envelope,
  and any emergency-stop provisions belong in the methods.
- **Human-robot interaction studies are human-subjects research**: IRB
  approval, informed consent, and the study-design discipline in
  `human-computer-interaction.md` all apply. HRI additionally has
  characteristic pitfalls — novelty effects are strong and often decay
  quickly, and Wizard-of-Oz control must be disclosed clearly, including in
  the abstract, since results from a teleoperated robot are not results
  about an autonomous one.
- Deployment contexts involving vulnerable people (care robots, robots in
  homes, robots working alongside workers) carry additional ethical scrutiny.

## Publication norms

- Conferences (ICRA, IROS, RSS, CoRL) are primary; journals (T-RO, IJRR,
  RA-L) also carry substantial weight, more than in most CS fields. RA-L
  runs a journal-style rolling review with conference presentation options.
- Supplementary video is effectively required for physical results.
- Code and hardware designs are increasingly released; open hardware
  descriptions materially help reproducibility.

## Red flags

- Simulation-only results described in language implying physical capability
- A demonstration video with no trial count or success rate
- Trials from a single fixed initial configuration
- Single training seed for a learned policy
- Wizard-of-Oz teleoperation disclosed only in a methods footnote
