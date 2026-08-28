# Field Layer: Sustainability Informatics

Covers computing for sustainability, energy-efficient computing, carbon
accounting of IT systems, environmental monitoring, and ICT4S. The
characteristic problem: **environmental claims are quantitative claims about
physical systems**, and they are routinely made without the measurement or
boundary discipline that would make them checkable.

## State the system boundary before any number

A carbon or energy figure is meaningless without its boundary. Specify:
- **Scope**: operational energy only, or embodied (manufacturing) impact
  too? Embodied carbon dominates for short-lived and edge devices, and
  omitting it flatters any efficiency result.
- **Lifecycle stage**: training only, or training plus inference over a
  deployment lifetime? For deployed ML systems, inference typically
  dominates cumulative energy despite training being the headline number.
- **What's included**: compute only, or cooling, networking, storage, and
  idle/provisioned-but-unused capacity? PUE (power usage effectiveness)
  should be stated and its source given.

Claims that cross boundaries without saying so are the field's most common
error — comparing your system's operational energy against a baseline's
full lifecycle, or vice versa.

## Measurement, not estimation, where possible

- How was energy obtained: hardware power meters, RAPL/NVML counters, or
  estimated from utilization and a TDP figure? These differ substantially in
  accuracy, and TDP-based estimates are upper bounds, not measurements.
  RAPL excludes significant components (some DRAM configurations, storage,
  peripherals) — say what it covers.
- Report measurement duration, sampling rate, and idle-baseline subtraction
  policy.
- Carbon intensity varies by grid region and by hour, sometimes by more
  than an order of magnitude. A single national average applied to a
  workload run at a specific time and place can be off by a large factor.
  State the intensity figure used, its source, its temporal resolution, and
  whether it is average or marginal emissions — marginal is the right choice
  for questions about the effect of adding load.

## Comparative and reduction claims

- The baseline must be the realistic status quo, not a strawman. "Our
  system uses 40% less energy" against an unoptimized reference is not a
  40% saving in practice.
- **Rebound effects**: efficiency improvements often increase total usage.
  A per-unit efficiency gain is not a total-emissions reduction, and
  claiming the latter from the former needs an argument about demand.
- **Avoided emissions are not reductions.** Counterfactual claims ("this
  prevented X tonnes") depend entirely on the assumed counterfactual, which
  should be stated and defended.
- Distinguish market-based accounting (renewable energy certificates, PPAs)
  from location-based (actual grid mix). Both are legitimate but answer
  different questions, and reporting only the flattering one is selective
  reporting.

## Reporting standards

- LCA work should follow ISO 14040/14044, including the functional unit,
  system boundary, allocation method, and sensitivity analysis. The
  functional unit is what makes comparisons valid — state it explicitly.
- Uncertainty is often large; report ranges and sensitivity to key
  parameters rather than a single point estimate carrying false precision.
  A carbon figure to three significant figures usually overstates what the
  method supports.
- For ML specifically, report hardware, hours, region, and the estimation
  tool used.

## The framing question

Sustainability claims are easy to overstate and hard to falsify, so check
whether the paper's environmental framing is doing real work or is added
motivation. A system that is faster and incidentally uses less energy is a
performance paper; framing it as a sustainability contribution requires
actually quantifying the environmental effect. Say so plainly when the
framing outruns the measurement.

## Publication norms

- Venues: ICT4S, HotCarbon, e-Energy, LIMITS, plus environmental science
  journals (Environmental Science & Technology, Journal of Industrial
  Ecology) for LCA-heavy work.
- Interdisciplinary review is common — a CS-venue paper making LCA claims
  will be judged against LCA standards by at least one reviewer.
- Data, measurement scripts, and the emissions calculation should be
  released; the calculation in particular is where errors hide.

## Red flags

- A carbon figure with no stated system boundary or grid-intensity source
- Operational energy compared against a baseline's lifecycle impact
- Efficiency gains presented as total emissions reductions
- A single national annual average carbon intensity applied to a specific
  workload
- Sustainability framing with no quantified environmental result
