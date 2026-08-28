# Field Layer: Social Networks

Covers network science and social network analysis: structure, diffusion,
influence, community detection, and network-based inference. Overlaps
`computational-social-science.md` (read it for platform data and ethics);
this file covers what's specific to **network data as a statistical
object**, where standard independence assumptions fail by construction.

## Observations are not independent

This is the field's foundational issue. Nodes are connected, so their
attributes and outcomes are correlated by design.
- Standard errors from methods assuming independent observations are too
  small, often dramatically. Use network-aware inference: permutation tests
  respecting network structure, ERGMs, SAOMs (RSiena), network
  autocorrelation models, or cluster-robust approaches.
- **Dyadic data** (edges as observations) has dependence through shared
  nodes; dyadic clustering or multiple-membership models are needed.
- A regression of node outcomes on node attributes with iid standard errors
  is a common and serious error. Name it when seen.

## Homophily vs. influence vs. confounding

Distinguishing "my friends and I are similar because they influenced me"
from "we became friends because we were already similar" from "we share an
environment" is **generally not identifiable from observational network
data alone**. This is well established and frequently ignored.
- If an influence or contagion claim is made, ask what identifies it:
  randomized interventions, instrumental variables, timing-based designs
  with strong assumptions, or a natural experiment. Longitudinal data alone
  does not resolve it.
- Latent homophily can produce apparent contagion in essentially any
  observational network analysis; a claim of social contagion needs to
  address it explicitly or be scoped down to association.

## Network boundary and sampling

- **Where does the network stop?** The boundary is a research decision and
  changes centrality, community structure, and degree distributions.
  State and justify it.
- **Sampled networks distort structure non-trivially**: node sampling,
  edge sampling, and snowball sampling each bias different measures.
  Degree distributions, clustering coefficients, and path lengths estimated
  from a sampled network are generally biased, and the bias doesn't shrink
  the way a mean's would. Say what sampling produced the network.
- **Missing edges** are usually non-random (unreported ties, private
  accounts, platform-invisible relationships) and systematically affect
  measures of centrality and cohesion.
- Ego-network data supports different claims than complete-network data;
  don't apply whole-network measures to ego networks.

## Comparing against null models

A structural feature is only notable relative to what would be expected by
chance in a comparable network.
- State the null model used (configuration model preserving degree sequence,
  Erdős–Rényi, degree-preserving rewiring) — conclusions frequently flip
  across choices, and the configuration model is usually the more meaningful
  comparison since degree heterogeneity alone explains many apparent
  effects.
- Claims about "small-world" or "scale-free" structure need statistical
  support, not a log-log plot with a fitted line. Power-law claims
  specifically require proper estimation and model comparison against
  alternatives (lognormal, exponential) — visual fits are not evidence.

## Community detection and clustering

- Most algorithms return communities on any input, including random graphs.
  Validate against a null model or ground truth before interpreting.
- Modularity has a known resolution limit that hides small communities in
  large networks; report the resolution parameter and check stability.
- Results vary across algorithms and across runs of stochastic algorithms —
  report consensus or stability across runs rather than a single partition.

## Publication norms

- Venues: Network Science, Social Networks, EPJ Data Science, ICWSM, WWW,
  Nature/Science-family journals for high-profile results, plus disciplinary
  sociology journals.
- Preprints standard; network data release is often constrained by privacy
  and platform terms — release derived measures or synthetic equivalents
  where the raw network can't be shared.

## Red flags

- Node-level regression with iid standard errors
- A contagion or influence claim that doesn't address homophily
- Structural measures reported from a sampled network as if from the whole
- A power-law claim supported by a log-log plot alone
- Communities interpreted substantively with no null-model comparison
