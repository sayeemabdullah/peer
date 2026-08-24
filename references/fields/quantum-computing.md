# Field Layer: Quantum Computing

Covers quantum algorithms, quantum hardware, error correction, and quantum
information. The field has an unusually large gap between **what has been
demonstrated and what gets claimed**, driven by commercial and funding
pressure, so scoping claims precisely is the central discipline here.

## Simulator, hardware, or theory?

State plainly which. The three support very different claims:
- **Theory/algorithm**: a complexity result or algorithm, with its
  assumptions — often including fault tolerance that does not yet exist, or
  oracle access, or an efficient state-preparation step that may itself be
  hard. Follow `theoretical-computer-science.md`.
- **Classical simulation**: results from simulating a quantum circuit
  classically. This says nothing about hardware behavior, and noiseless
  simulation says nothing about what current devices do.
- **Hardware**: run on a real device, with noise. This is the only evidence
  about current capability, and it requires the reporting below.

Papers that prove something under fault tolerance and then discuss near-term
impact should be explicit that the two are separated by a large engineering
gap.

## Quantum advantage claims

These attract the most scrutiny and have the worst track record — several
prominent claims were subsequently matched or beaten by improved classical
algorithms.
- The comparison must be against the **best known classical method**,
  including classical algorithms tailored to the specific problem
  (tensor-network contraction, specialized samplers), not a generic
  brute-force baseline.
- Report the classical resources assumed and their source; classical
  hardware and algorithms improve, so an advantage claim is a claim about a
  moment in time and should be framed that way.
- **Verification**: how was the quantum output verified as correct? For
  sampling problems this is itself hard, and cross-entropy benchmarking has
  known limitations. State the verification method and its assumptions.
- Distinguish advantage on a contrived sampling task from advantage on a
  useful computation. The former is a scientific milestone, not a practical
  one, and conflating them is the field's characteristic overclaim.

## Hardware reporting

- Qubit count alone is not a capability measure. Report gate fidelities
  (one- and two-qubit), readout fidelity, coherence times (T1, T2),
  connectivity, and circuit depth achieved.
- **How fidelity was measured** matters: randomized benchmarking, gate set
  tomography, and cross-entropy benchmarking measure different things, and
  RB numbers can look good while the device fails on structured circuits.
- Report calibration frequency and drift — devices change between runs, and
  results from a well-calibrated moment are not typical performance.
- State the number of shots, post-selection, and any error mitigation
  applied. **Error mitigation is not error correction**: mitigation
  techniques (zero-noise extrapolation, probabilistic error cancellation)
  have sampling overheads that scale badly and do not make a computation
  scalable. Papers should not blur this.
- Post-selection that discards a large fraction of runs must be reported
  with its acceptance rate.

## Error correction claims

- Distinguish demonstrating a code, demonstrating below-threshold operation,
  and demonstrating a logical qubit that outperforms its physical
  constituents. These are very different milestones.
- Report the code distance, the logical error rate per cycle, and how it
  scales with distance — the scaling is the claim, not a single point.
- Resource estimates for a fault-tolerant application should state the
  assumed physical error rate, code, and overhead, since conclusions swing
  by orders of magnitude across plausible assumptions.

## Algorithms for near-term devices

- Variational algorithms (VQE, QAOA) face barren plateaus and classical
  optimization difficulty; small-instance success does not establish
  scaling. Claims about scaling need evidence at more than one size.
- Compare against classical heuristics on the same problem instances —
  many benchmark instances are easy classically.
- State whether the classical optimization loop was run on hardware or in
  simulation.

## Publication norms

- arXiv (quant-ph) is universal and typically precedes journal submission.
- Journals: Nature, Science, PRX Quantum, Quantum (open access, community
  run), npj QI, PRA.
- Industry-affiliated results attract particular scrutiny; disclose
  affiliation and funding, and expect reviewers to probe advantage claims
  hard.

## Red flags specific to this field

- Results presented without stating whether they came from hardware or
  simulation
- Advantage claimed against a generic classical baseline rather than the
  best known method
- Qubit count headlined with fidelities and depth omitted
- Error mitigation described in language implying scalability
- Heavy post-selection with the acceptance rate unreported
