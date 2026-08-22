# Field Layer: Computer Graphics

Covers rendering, geometry processing, animation, simulation, and visual
computing. The distinctive methodological problem: **the primary result is
often an image**, and images are easy to present selectively and hard to
evaluate objectively.

## Image results and cherry-picking

- Are the shown results representative, or the best cases? Ask for the full
  set — supplementary material with all test scenes, including failures, is
  the norm at strong venues and its absence is conspicuous.
- **Failure cases belong in the paper** (Standing Rule 6). Graphics reviewers
  specifically look for a limitations section with actual failure images; a
  method presented as working everywhere reads as under-tested.
- Equal-time and equal-quality comparisons tell different stories. For
  rendering, show both where feasible: the same wall-clock budget, and the
  same error level. Comparing your method's converged result against a
  baseline's under-converged one is a common unfairness.
- State the exact scene, resolution, sample counts, and hardware for every
  image compared — these drive the result as much as the method.

## Perceptual metrics and their limits

- PSNR and SSIM correlate imperfectly with perceived quality; LPIPS,
  FLIP, and HDR-VDP are better aligned but still proxies. Report more than
  one, and don't let a metric win substitute for showing the images.
- Metric improvements below the threshold of visible difference are not
  meaningful quality improvements — say so rather than reporting a decimal
  gain as if it mattered.
- For geometry, report the metric's meaning (Hausdorff vs. mean surface
  distance behave very differently on outliers) and normalize consistently.

## User studies for visual quality

When a perceptual claim is made ("looks more realistic," "is preferred"),
that is an empirical claim about people and needs a study
(`human-computer-interaction.md`):
- Two-alternative forced choice is standard and more reliable than rating
  scales for comparison claims.
- Report participant count, recruitment, display conditions (calibration,
  viewing distance, ambient light) and stimulus randomization.
- Analyze with an appropriate model for paired comparisons; report effect
  sizes and intervals, not just significance.

## Performance and simulation claims

- Timings follow `computer-systems-networks.md`: GPU model, driver,
  resolution, and precision (fp16/fp32) all stated, multiple runs, variance
  reported.
- For physical simulation, distinguish visual plausibility from physical
  accuracy. If accuracy is claimed, validate against an analytical solution
  or reference simulation (`numerical-analysis.md`); if only plausibility is
  claimed, don't use accuracy language.
- Stability claims need the parameter regime stated — time step, stiffness,
  and resolution ranges where the method holds up, and where it doesn't.

## Publication norms

- SIGGRAPH and SIGGRAPH Asia (proceedings published as ACM TOG) are primary,
  along with EGSR, Eurographics, and SCA. TOG is the journal of record.
- Supplementary video is effectively required for animation and simulation
  work; results that only exist as still frames invite skepticism about
  temporal artifacts.
- Code and scene release is increasingly common but less universal than in
  ML; releasing is a meaningful credibility signal.

## Red flags specific to this field

- Comparison images at unequal sample counts, time budgets, or resolution
- No limitations section and no failure cases
- A perceptual claim ("more realistic") with no user study
- Metric gains reported without showing the corresponding images
- Temporal results (animation, simulation) shown only as still frames
