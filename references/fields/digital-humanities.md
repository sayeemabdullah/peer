# Field Layer: Digital Humanities

Covers computational text analysis of literary and historical corpora,
cultural analytics, digital archives, and quantitative approaches to
humanities questions. The distinctive tension: **computational methods
carry an authority that the underlying data often doesn't support**, and
humanities questions are frequently interpretive in ways that resist
operationalization.

## The corpus is an argument

- A corpus is a selection, and the selection encodes a claim about what
  counts. State how texts were chosen, what the population is meant to be,
  and what is excluded.
- **Survivorship and canon bias**: digitized collections over-represent
  what libraries kept, what was reprinted, what is out of copyright, and
  what was written in dominant languages by socially advantaged authors.
  A claim about "nineteenth-century fiction" from a digitized corpus is a
  claim about a heavily filtered subset — say so.
- **Copyright shapes corpora** more than scholarly criteria do: the
  twentieth century is systematically underrepresented in open corpora,
  producing artifacts that look like historical change.
- Report corpus size, date range, language, genre composition, and metadata
  provenance. Metadata in aggregated collections (HathiTrust, Google Books)
  contains substantial errors — dates in particular.

## Text quality

- **OCR error is not random**: it varies by typeface, print quality, layout,
  language, and period, so error rates correlate with exactly the variables
  often under study. A trend over time can be an OCR-quality trend.
- Report OCR accuracy where known, or characterize it on a sample. For
  handwritten material, HTR error is larger still.
- Normalization decisions (spelling modernization, lemmatization, stopword
  removal, chunking) change results. State them; historical spelling
  variation makes this consequential for pre-modern corpora.

## Methods and interpretation

- **Topic models** are exploratory. Topics are statistical artifacts that
  require interpretation, and the number of topics is a researcher choice
  that shapes results. Validate interpretations against close reading of
  documents, report stability across runs and parameter settings, and don't
  present topics as discovered categories.
- Word embeddings trained on small historical corpora are noisy; semantic
  change claims need bootstrapping or multiple training runs to distinguish
  signal from initialization variance.
- **Off-the-shelf NLP tools are trained on contemporary text** and degrade
  substantially on historical, literary, or non-English material. Validate
  on in-domain samples before using outputs as evidence
  (`natural-language-processing.md`).
- Sentiment and emotion classifiers are especially unreliable on literary
  and historical text; treat their outputs as weak measurements requiring
  validation.
- Statistical significance on a corpus is not interpretive significance. A
  reliable frequency difference may be trivial as a literary or historical
  claim; state what it means, not just that it exists.

## Combining computation and interpretation

- The strongest work moves between scales — computational patterns motivate
  close reading, and close reading checks whether the pattern means what it
  appears to. Report the interpretive work, not only the pipeline.
  Where the argument is fundamentally interpretive, `qualitative-research.md`
  applies to that portion.
- Visualization choices (scaling, smoothing, binning, color) carry
  argumentative weight; state the parameters and avoid smoothing that
  manufactures trends.
- Negative and null results are informative here too, and are
  under-published in a field where the computational apparatus creates
  pressure to find something (Standing Rule 6).

## Infrastructure, credit, and sustainability

- Digital projects (archives, tools, editions) are scholarly contributions
  but are often undercredited in tenure review — a real consideration when
  planning outputs (`submission-strategy.md`).
- Collaborative projects should use a contributor-role taxonomy; technical
  labor (developers, catalogers, RAs) is routinely under-acknowledged and
  should be credited explicitly.
- Sustainability planning — what happens to a web resource after the grant
  ends — is expected in funding applications and increasingly in
  publications.
- Data, code, and derived datasets should be deposited in an archival
  repository, not only on a project website.

## Ethics and rights

- Copyright and licensing constrain text sharing; derived data (word counts,
  embeddings, extracted features) can often be shared where full text can't.
- Cultural heritage material may carry community rights beyond copyright —
  Indigenous and colonial-archive collections in particular. Consult
  community protocols and consider Traditional Knowledge labels.
- Digitized archives of marginalized people were often created under
  coercive conditions; consider whether computational analysis compounds
  that.

## Publication norms

- Journals: DSH, DHQ (open access), Journal of Cultural Analytics, Cultural
  Analytics; plus disciplinary humanities venues.
- Conferences (DH, ADHO) publish abstracts rather than full archival papers.
- Humanities publication norms — single authorship, monographs, long review
  cycles — coexist awkwardly with computational norms; expect reviewers from
  both traditions and write for both.

## Red flags

- A corpus described without its selection criteria or exclusions
- Diachronic trends from OCR'd text with no discussion of OCR quality
  variation over time
- Topic model topics presented as discovered categories
- Contemporary NLP tools applied to historical text with no in-domain
  validation
- Statistical difference presented as interpretive significance
