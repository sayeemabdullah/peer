# Field Layer: Numerical Analysis

Covers numerical methods, scientific computing, and computational
mathematics. Like `applied-discrete-mathematics.md`, work here typically
pairs analysis with computation, and the two halves are judged differently.

## Verification vs. validation — keep them distinct

These are routinely conflated and mean different things:

- **Verification**: is the code solving the equations correctly? Checked
  against analytical solutions, the method of manufactured solutions, or
  convergence-rate studies.
- **Validation**: are these the right equations for the physical system?
  Checked against experimental data.

A paper that verifies but does not validate has not shown its model
describes reality; a paper that matches experiment without verification may
be doing so through compensating errors. State which was done.

## Convergence claims

- Does the observed convergence rate match the theoretical order? A method
  proved second-order that converges at first order in practice signals a
  bug, a regularity assumption violated by the test problem, or a boundary
  treatment that degrades the order — investigate rather than reporting the
  observed rate as if expected.
- Is the convergence study run over enough refinement levels to establish a
  rate, and is it in the asymptotic regime? Two points determine a slope but
  not a trend.
- For problems with singularities or low-regularity solutions, state the
  regularity actually assumed — convergence theory typically requires
  smoothness the test problem may not have.

## Conditioning and error analysis

- Report the condition number or an equivalent sensitivity measure for
  ill-conditioned problems; an accurate-looking result on a well-conditioned
  test case says little about the method's stability.
- Distinguish truncation error, round-off error, and iteration/solver
  tolerance — a study that refines the mesh without tightening the solver
  tolerance eventually measures the solver, not the discretization.
- For stochastic methods (Monte Carlo, stochastic gradient), report
  statistical error alongside discretization error rather than a single
  number conflating both.

## Floating-point reproducibility

- Bitwise reproducibility is not guaranteed across compilers, optimization
  levels, thread counts, BLAS implementations, or hardware — state the
  environment, and don't present run-to-run variation as a method property
  when it may be a summation-order artifact.
- For parallel and GPU implementations, non-deterministic reduction order
  means results legitimately differ across runs; report tolerance rather
  than implying exactness.

## Performance claims

Timing comparisons are empirical and subject to the normal disciplines:
- Compare against a fairly tuned baseline, on the same hardware, with
  compiler flags and library versions stated
- Report multiple runs with dispersion, not a single best time
- Distinguish algorithmic speedup from implementation speedup — a 10×
  improvement over a naive reference implementation is not a 10×
  improvement over the state of the art

## Publication norms

- arXiv preprints are standard; journals (SINUM, SISC, Math. Comp.,
  JCP, and domain-specific venues) dominate over conferences.
- Code and reproducibility artifacts are increasingly expected; some
  journals run a formal reproducibility review.

## Red flags

- A convergence plot with no reference slope, or too few refinement levels
  to support the claimed rate
- Accuracy demonstrated only on problems with smooth analytical solutions,
  with no test on the rough cases the method claims to handle
- Speedup over an unoptimized reference implementation reported as speedup
  over the state of the art
- Solver tolerance left fixed across a mesh-refinement study
