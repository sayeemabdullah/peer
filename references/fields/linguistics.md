# Field Layer: Linguistics

Covers theoretical linguistics, typology, language documentation,
sociolinguistics, and corpus linguistics. For computational work see
`natural-language-processing.md`; for psycholinguistic experiments see
`cognitive-science.md`. This file covers linguistics' own evidence types,
which are distinctive: **judgments, fieldwork elicitation, and cross-
linguistic samples**.

## Acceptability judgments as data

- Informal judgments from the author and colleagues remain common and have
  been the subject of sustained methodological debate. Large-scale
  comparisons suggest most textbook contrasts replicate, but that finding
  doesn't license informal judgments for **subtle or theoretically
  contested** contrasts — those are exactly where informal methods fail.
- Where a contrast is delicate, gradient, or disputed, collect formal
  judgments: multiple naive speakers, multiple lexicalizations per
  condition, fillers, and a scale (Likert, magnitude estimation, forced
  choice) with counterbalanced presentation. Analyze with the mixed-effects
  discipline in `cognitive-science.md` — items are a random effect.
- Report who the judges were: native speakers, dialect, and whether they
  were linguists (linguists' judgments are affected by theoretical
  commitment).
- Judgments of ungrammaticality are claims about the absence of something;
  gradient unacceptability may reflect processing difficulty or pragmatic
  oddity rather than grammatical illicitness. Distinguish these.

## Fieldwork and documentation

- Report the language, its ISO 639-3 code, location, number of speakers,
  and vitality status. "A language of Papua New Guinea" is not
  identification.
- Describe the consultants (number, age, sex, multilingualism, language
  history) and the elicitation method — translation tasks, stimulus-based
  elicitation, and natural discourse produce systematically different data,
  and translation elicitation in particular can import the contact
  language's structure.
- Distinguish elicited from spontaneous data in examples, and say which
  supports which claim. Corpus-attested examples carry different weight than
  constructed ones.
- Gloss examples per the **Leipzig Glossing Rules** with a free translation,
  and give the source for each example.
- **Archive the primary data** (ELAR, PARADISEC, AILLA, TLA) with
  appropriate access conditions. Documentation without archiving leaves the
  claims unverifiable and the record lost.

## Ethics in language communities

- Speakers are collaborators, not informants. Compensation, credit, and
  community consultation should be reported.
- Communities hold interests in their linguistic materials; access
  restrictions on archived data are legitimate and should be negotiated
  with the community, not imposed by default openness.
- Indigenous data sovereignty (CARE principles) applies alongside FAIR.
- Community authorship or acknowledgment, and materials returned in usable
  form (dictionaries, pedagogical materials), are increasingly expected
  rather than optional.

## Typology and cross-linguistic sampling

- **Genealogical and areal non-independence**: languages are related and
  neighbors influence each other, so a sample of languages is not a sample
  of independent observations — the same problem as phylogenetic
  non-independence in `ecology-evolution.md`.
- Use a stratified sample across families and areas, or a method that
  models the dependence. Report the sampling method and the sample's
  composition.
- Beware of database artifacts: WALS, Grambank, and similar encode
  simplified categories from sources of varying quality and vintage. Check
  values against primary descriptive sources for claims that hinge on them.
- Absence of a feature in a description may mean the feature is absent or
  that the describer didn't document it. Missing data is not evidence of
  absence.

## Corpus and sociolinguistic work

- Report corpus composition, size, genre, time period, and sampling frame —
  frequency claims are relative to the corpus.
- Normalize frequencies and use dispersion measures; a form concentrated in
  a few texts is not generally frequent.
- Sociolinguistic variation studies need the envelope of variation defined
  (which contexts count as an opportunity for the variable), and speaker
  sampling described. The observer's paradox affects vernacular data
  collection and should be addressed.

## Publication norms

- Journals: Language, Linguistic Inquiry, NLLT, Journal of Linguistics,
  Linguistic Typology, Language Documentation & Conservation.
- Open-access publishers (Language Science Press, Glossa) are prominent.
- LingBuzz is the field's preprint archive for theoretical work.
- Data and code sharing expected for quantitative work; example sources and
  archived recordings for descriptive work.

## Red flags specific to this field

- A contested judgment contrast supported only by the author's intuition
- Examples given with no source, or elicited and spontaneous data conflated
- A typological claim from a sample dominated by one family or area
- Database values used for a central claim with no check against primary
  sources
- Fieldwork data with no archiving and no statement of community consent
