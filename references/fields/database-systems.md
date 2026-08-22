# Field Layer: Database Systems

Covers query processing, storage engines, transaction processing, query
optimization, and data management systems. Shares the measurement discipline
in `computer-systems-networks.md` — read that for hardware reporting, tail
latency, and fair baselines — with additional concerns specific to
databases.

## Benchmark selection

- **Standard benchmarks** (TPC-C, TPC-H, TPC-DS, YCSB, JOB, SSB, CH-benCHmark)
  are checkable and comparable; custom workloads are not, unless the
  generator and data are released.
- A custom benchmark introduced in the same paper that proposes the system
  invites the question of whether the benchmark was shaped to fit the
  system. That's not disqualifying, but it needs justification for why
  existing benchmarks were inadequate, and results on a standard benchmark
  alongside it wherever one applies.
- Report **all queries in the benchmark**, not a selected subset. A TPC-H
  result on 8 of 22 queries is a different claim from a full run, and the
  omitted queries are usually the interesting ones (Standing Rule 6).
- Scale factor matters enormously — results at SF=1 (fits in memory) say
  little about SF=1000 behavior. State it, and don't generalize across
  regimes.

## Configuration fairness

- Databases are extremely tuning-sensitive. A comparison against a
  default-configured PostgreSQL or MySQL is a comparison against an
  untuned system, not against the system's capability. State what tuning
  each system received, and give baselines comparable effort.
- Buffer pool / shared memory sizing relative to dataset size drives most
  performance differences; report it for every system compared.
- Isolation level and durability settings must match across compared
  systems — a system running with relaxed durability against one running
  fully durable is not a valid comparison, and this is a common silent
  mismatch.

## Cold vs. warm, and what's actually measured

- State whether measurements are cold-cache, warm-cache, or steady-state,
  and how warm-up was performed. Mixing these across compared systems
  invalidates the comparison.
- For write-heavy workloads, report behavior after compaction/checkpointing
  has reached steady state — short runs measure the empty-system case.
- Separate query compilation/optimization time from execution time when the
  claim concerns one of them.

## Correctness alongside performance

- A faster system that returns different results is not faster. State that
  outputs were verified to match across compared systems, especially for
  approximate or reordered execution.
- For transactional claims, state the isolation level actually provided and,
  where the claim is about correctness under concurrency, how it was tested
  (Jepsen-style fault injection, formal specification, targeted anomaly
  tests). "We use serializable isolation" is a claim that should be
  supported, not asserted.

## Publication norms

- Conferences (SIGMOD, VLDB, ICDE, CIDR) are primary; VLDB operates on a
  rolling journal-style submission model (PVLDB).
- Reproducibility/availability review is established at SIGMOD and VLDB —
  plan for it rather than retrofitting.
- Preprints are common; check double-blind policy before posting.

## Red flags specific to this field

- A subset of benchmark queries reported without explaining the omission
- Comparison against a default-configured baseline system
- Durability or isolation settings unstated, or mismatched across systems
- Results at a single scale factor generalized to all scales
- Throughput reported without the corresponding latency, or vice versa
