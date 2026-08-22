# Field Layer: Neuroscience

Covers systems, cognitive, and computational neuroscience, including
neuroimaging, electrophysiology, and animal neuroscience. Two problems
dominate: **massive multiple comparisons** across voxels/channels/neurons,
and **small samples** in expensive experiments.

## Circular analysis (double dipping)

The field's signature error: selecting voxels, channels, neurons, or time
windows based on an effect, then testing that same effect in the selected
data. The selection guarantees the result.
- Selection must be independent of the test — from an orthogonal contrast,
  an independent localizer run, anatomically defined ROIs, or cross-
  validation with the selection performed inside the training fold.
- Watch for it in: ROI definition from the group effect, peak-voxel effect
  sizes reported from the same data that identified the peak, and time
  windows chosen by inspecting the grand-average waveform.
- Peak-voxel statistics are biased upward even with a valid threshold; this
  is a bias in magnitude, not just in significance, and should not be
  reported as an unbiased effect size.

## Multiple comparisons in imaging and electrophysiology

- Whole-brain analyses test tens of thousands of voxels. Use cluster-level
  correction with a validated method, permutation-based correction (which
  is well-calibrated and now preferred), TFCE, or voxel-wise FWE — and
  report the forming threshold along with the corrected threshold, since
  liberal forming thresholds inflate cluster-based false positives.
- "Uncorrected p < 0.001" is not a corrected result and should not be
  reported as though it were.
- For EEG/MEG, cluster-based permutation tests are standard; note that they
  license a claim that *a* difference exists in the cluster, not precise
  claims about its exact latency or location — this over-interpretation is
  common.
- Small-volume correction requires the volume to have been specified in
  advance, on independent grounds.

## Sample size and power

- Neuroimaging has a long history of underpowered studies producing
  inflated, unreplicable effect sizes. Brain-wide association studies of
  individual differences in particular require samples far larger than
  traditional task-fMRI studies (thousands, not dozens) to produce stable
  estimates.
- Within-subject task designs with many trials are far better powered than
  between-subject individual-difference designs at the same N — the
  relevant unit for power differs by question. State which one applies.
- For animal work, power analysis is both a scientific and an ethical
  requirement (3Rs): underpowered studies waste animals without producing
  usable evidence.

## Analytic flexibility

The number of defensible pipelines (preprocessing, motion correction,
smoothing, normalization, model specification) is very large, and different
pipelines yield different results from the same data. Preregistration is
correspondingly more valuable here, not less. Where exploratory, say so
(Standing Rule 2), and consider reporting multiverse/specification-curve
analyses rather than a single pipeline's result.

## Animal research specifics

- **ARRIVE 2.0** is the reporting standard: species, strain, sex, age,
  housing, randomization, blinding, and sample size justification.
- **Blinding and randomization** are frequently omitted in animal work and
  are associated with inflated effect sizes; report both explicitly.
- Sex as a biological variable: single-sex studies need justification, and
  results shouldn't be generalized across sexes without evidence.
- Ethics approval (IACUC or equivalent) and humane endpoints must be stated.

## Reporting standards

- **COBIDAS** (OHBM) for MRI and MEG/EEG reporting — comprehensive and
  specifically expected at neuroimaging venues.
- Report coordinate space (MNI/Talairach), software and version, full
  preprocessing chain, motion criteria and exclusions, and the exact
  contrast specification.
- Exclusions (motion, artifact, performance) must be pre-stated and their
  counts reported by group (Standing Rule 4).

## Publication norms

- Journals dominate: Nature Neuroscience, Neuron, eLife, Journal of
  Neuroscience, NeuroImage, Cerebral Cortex.
- bioRxiv preprints are standard; Registered Reports are available at
  several venues and well suited to the field's flexibility problem.
- Data sharing via OpenNeuro/NeuroVault and BIDS-formatted datasets is an
  increasing expectation.

## Red flags specific to this field

- ROI or time window selected from the same data used to test the effect
- Uncorrected thresholds reported as findings
- A brain-behavior correlation from a few dozen participants
- Animal study with no mention of randomization or blinding
- One preprocessing pipeline reported with no sensitivity check
