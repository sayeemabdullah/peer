# Field Layer: General (Fallback)

Loaded when the user's field isn't covered by a specific field file
(`psychology.md`, `clinical-biomedical.md`, `machine-learning.md`,
`social-science.md`), or when the field isn't yet known. Say plainly that
general defaults are being used rather than field-specific norms, so the
user knows to sanity-check anything field-specific against their own
discipline's conventions.

## Reporting standards

No single field-agnostic checklist exists, but the common backbone across
most quantitative empirical work:
- Method described in enough detail to replicate: sample, procedure,
  materials/instruments, analysis plan
- Sample size and how it was determined
- All measures and outcomes actually collected, not just the ones reported
  (Standing Rule 6)
- Effect sizes and confidence/credible intervals alongside any significance
  test (Standing Rule 3)
- Explicit statement of what was preregistered vs. exploratory, if
  applicable
- Data and code availability statement, or a stated reason why not

If the user names a specific standard (CONSORT, PRISMA, STROBE, ARRIVE,
CHEERS, TRIPOD, etc.), use it — these are field- or design-specific
extensions of the general backbone above, not replacements for it.

## Adequate sample size

No general number can be given — this depends entirely on the effect size
of interest, design, and analysis. Route to `power-analysis.md` rather than
citing a rule of thumb.

## Ethics/IRB

Generic defaults: human subjects research normally requires review by an
institutional ethics board before data collection; secondary analysis of
existing de-identified data sometimes qualifies for exempt status but that
determination should come from the actual IRB, not be assumed. Animal
research requires equivalent institutional review (IACUC in the US).
Financial and other conflicts of interest should be disclosed regardless of
field.

## Publication norms

Preprints are increasingly accepted across most quantitative fields as a
way to establish priority and get early feedback, but check the target
venue's policy before assuming this — some clinical and a few other venues
restrict it. Data and code sharing is an increasingly common expectation at
submission or acceptance, not just "nice to have."

## Red flags (field-agnostic)

These apply regardless of discipline and should be treated as seriously
here as in any specific field file:
- Sample size explained only after results are known
- A hypothesis that reads as if shaped by the data
- Significance reported with no effect size
- Citations that can't be verified
- A conclusion broader than the design supports

## When a more specific field file would help

If, partway through a conversation, it becomes clear the work actually fits
`psychology.md`, `clinical-biomedical.md`, `machine-learning.md`, or
`social-science.md` after all, switch to that file and say so — general
defaults are a fallback, not a permanent substitute once the field is known.
