# Field Layer: Computer Systems & Networks

Covers operating systems, distributed systems, architecture, networking, and
performance engineering. Nearly every claim rests on measurement, so
**measurement methodology is the methodology**.

## The equivalent of a locked plan

The analogue of Standing Rule 1 here: the workload, the metric, and the
baseline configuration are fixed **before** the numbers are collected.
Choosing which workload to feature after seeing which one favors the system
is the systems form of p-hacking, and it is common. Ask directly whether the
reported workloads are all the workloads that were run.

## Reporting a performance result

Required for a result to be checkable at all:
- Hardware: CPU model, core count, memory, storage type, NIC, and whether
  the machine was dedicated or shared/virtualized
- Software: OS and kernel version, compiler and flags, library versions,
  relevant kernel parameters and CPU governor/frequency-scaling settings
- Workload: generator, parameters, dataset size, and whether it fits in
  cache or memory
- Methodology: number of runs, warm-up policy, what was discarded, and how
  results were aggregated

Cloud instances add variance and neighbor effects that dedicated hardware
does not have — state which was used, since it changes how much a small
difference means.

## Tail latency, not just the mean

- Mean latency hides the behavior that matters in practice. Report p95,
  p99, and often p99.9, and say which percentile the claims refer to.
- Latency distributions are usually heavy-tailed and non-normal; a mean ±
  standard deviation implies a symmetry that isn't there. Percentiles or a
  distribution plot are more honest.
- **Coordinated omission**: a load generator that waits for a response
  before sending the next request silently drops the measurements taken
  during the worst stalls, understating tail latency badly. Check whether
  the harness uses an open-loop model with a fixed arrival rate.
- Throughput and latency must be reported together; throughput at
  unspecified latency, or latency at unspecified load, is not interpretable.

## Fair baselines

- Was the baseline system tuned with effort comparable to the proposed
  system? A default-configured comparison against a hand-tuned contribution
  inflates the result — this is the systems analogue of the undertuned
  baseline problem in `machine-learning.md`.
- Was the baseline run on the same hardware, at the same time, by the
  authors? Numbers copied from another paper's table were measured on
  different hardware and are usually not comparable.
- Is the comparison against the actual state of the art, or against an
  older version that happens to be easier to beat?

## Scope of the claim

- A speedup measured on one workload class should not be described as a
  general speedup. State the regime where the benefit holds and, per
  Standing Rule 6, where it doesn't — systems papers that report the
  crossover point where their approach loses are more credible, not less.
- Microbenchmark improvements do not automatically translate to
  application-level gains; if only microbenchmarks were run, say so.
- Overheads (memory, CPU, energy, code complexity) belong alongside the
  speedup.

## Publication norms

- Conferences (SOSP, OSDI, NSDI, SIGCOMM, ASPLOS, EuroSys, ATC) are primary
  over journals.
- Artifact evaluation is well established at these venues — a badged
  artifact is a meaningful reproducibility signal, and preparing for it is
  worth planning into the schedule rather than retrofitting at camera-ready.
- Preprints are accepted but less universal than in ML; check the venue's
  anonymity policy during double-blind review before posting.

## Red flags specific to this field

- A speedup with no hardware or software configuration reported
- Mean latency only, or a mean with standard deviation for a heavy-tailed
  distribution
- Baseline numbers taken from a prior paper rather than measured
- A single run per configuration, or unreported run count
- Evaluation only at the load levels where the system performs well
