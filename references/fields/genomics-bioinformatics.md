# Field Layer: Genomics & Bioinformatics

Covers genomic association studies, sequencing analysis, transcriptomics,
and computational biology pipelines. The defining feature: **testing is
performed at enormous scale**, so multiple-comparison discipline isn't a
refinement here — it's the difference between a result and noise.

## Multiple testing at genome scale

- Genome-wide association studies test millions of variants. The
  conventional genome-wide significance threshold (5×10⁻⁸ for common
  variants in European-ancestry samples) reflects the effective number of
  independent tests given linkage disequilibrium — it is not an arbitrary
  convention and should not be relaxed without justification.
- For expression and other omics work, FDR control (Benjamini–Hochberg,
  q-values, local FDR) is standard. Report the method and the threshold, and
  report how many hypotheses were tested — a q-value without the test count
  is uninterpretable.
- **Candidate-gene studies** with a handful of tested variants have a poor
  replication record in this field; treat unreplicated candidate-gene
  findings with corresponding caution.

## Batch effects and technical confounding

- Batch effects are pervasive and can dominate biological signal. Was
  sample processing randomized across batches with respect to the variable
  of interest, or did cases and controls get processed separately? The
  latter confounds batch with biology irrecoverably.
- Report the correction applied (ComBat, RUV, SVA, or covariate adjustment)
  and check that the correction didn't remove the biological signal along
  with the batch — over-correction is a real failure mode, particularly when
  batch is correlated with the outcome.
- Sequencing depth, RNA integrity, and cell composition (for bulk tissue)
  are technical covariates that behave like confounders and belong in the
  model.

## Population structure

- Ancestry differences between cases and controls produce spurious
  associations. Report principal components or a mixed-model approach
  (LMM/GRM), and report the genomic inflation factor (λ) as evidence that
  stratification was controlled.
- **Portability is limited**: polygenic scores developed in one ancestry
  group perform substantially worse in others. A PGS claim must state the
  ancestry it was developed and validated in, and should not be presented as
  generally applicable. The field's overwhelming European-ancestry bias is
  a known equity problem and should be acknowledged rather than passed over.

## Replication and validation

- **Independent replication cohorts are the field's standard** for
  association claims — discovery plus replication, not discovery alone. A
  single-cohort association is a candidate, not a finding (Standing Rule 7).
- Computational predictions of function need experimental validation, or
  explicit scoping as predictions. A differentially expressed gene list is a
  hypothesis-generating result.
- Enrichment analyses require the correct background gene set; using all
  genes as background when the assay only measured a subset produces
  spurious enrichment.

## Pipelines and reproducibility

- Report tool versions, reference genome build (results are not comparable
  across GRCh37/GRCh38), annotation version, and all non-default parameters.
  Version differences change results materially.
- Workflow managers (Nextflow, Snakemake, WDL) with containerized
  environments are the reproducibility norm — see `data-management.md`.
- Sample-swap and contamination checks (genotype concordance, sex checks)
  should be performed and reported.

## Data sharing and ethics

- Deposition in a public repository (GEO, SRA, ENA, dbGaP, EGA) is required
  by most journals; controlled-access repositories exist for identifiable
  human data.
- **Genomic data is inherently identifiable** and implicates relatives who
  never consented. Consent scope matters, including for secondary use and
  data sharing.
- Incidental findings of clinical significance require a pre-specified
  return-of-results plan.
- Populations that have been harmed by past genomics research (notably
  Indigenous communities) have specific governance expectations; community
  consent and data sovereignty frameworks may apply beyond individual
  consent.

## Reporting standards

- **STREGA** (a STROBE extension) for genetic association studies;
  **MIAME/MINSEQE** for expression data; FAIR principles for data deposition.

## Publication norms

- Journals dominate: Nature Genetics, AJHG, Genome Biology, Bioinformatics,
  Genome Research, PLOS Genetics.
- bioRxiv preprints are standard.
- Code release is expected; tool papers are judged partly on usability and
  documentation.

## Red flags

- An association reported without a replication cohort
- Cases and controls processed in separate batches
- No population-structure correction, or λ unreported
- A polygenic score presented without stating its development ancestry
- Enrichment analysis with an inappropriate background set
