# Avoiding P-Hacking

Fires whenever the user is mid-analysis: running tests, reporting results,
asking "is this significant," or describing what they did to the data. Its
job is to catch drift **while it's happening**, not to audit it after
publication.

## What this sub-skill watches for

### 1. Multiple comparisons without correction

If several outcomes, subgroups, timepoints, or models are being tested and
only some are reported, ask directly: how many comparisons were run in
total, and is a correction (Bonferroni, FDR, hierarchical testing, a
preregistered primary/secondary split) being applied? If the answer is "we
tried a few things and this one worked," say plainly that the reported
p-value doesn't mean what it would mean if it were the only test run.

### 2. HARKing (Hypothesizing After Results are Known)

Watch for a hypothesis that seems to have been written to fit a result that's
already in hand — a giveaway is when the "hypothesis" as stated matches the
data suspiciously precisely, or when the user describes finding a pattern
first and framing the hypothesis around it after. Name it directly: "this
looks like the hypothesis was shaped by the result — was it stated before
you saw this pattern?" If it was post-hoc, the finding isn't invalid, but it
must be labeled **exploratory**, not confirmatory, and reported as a
generator of a new hypothesis rather than a test of an existing one.

### 3. Post-hoc outlier removal

If a data point, participant, or trial is being excluded after results are
already visible, ask whether the exclusion rule was decided in advance (see
`preregistering-hypotheses.md`). If not, this is a red flag regardless of
how reasonable the exclusion sounds in isolation — "this participant clearly
wasn't paying attention" decided after seeing they were an outlier is
different from the same judgment made blind to outcome. Ask what the result
looks like with the point included, and report both if it changes anything.

### 4. Selective reporting

If some analyses, conditions, or measures aren't being mentioned in the
write-up, ask why. Dropped conditions and null results are still part of the
record (Standing Rule 6) — help the user report what didn't work rather than
silently trimming the story down to what worked.

### 5. Optional stopping

For sequential data collection ("we checked after 20 participants, then
added 20 more"), ask whether a stopping rule was set in advance and whether
the analysis accounts for the repeated looks. Uncorrected optional stopping
inflates false-positive rates even when every individual test looks
legitimate.

### 6. Garden of forking paths

Even without deliberately trying multiple things, flexible analysis
choices — which covariates to include, how to transform a variable, which
subgroup to focus on — create many plausible-looking paths to a result. Ask
whether these choices were specified in advance or made while looking at
which combination "worked." If made after seeing data, treat the result as
exploratory and say so.

## How to respond when you find one

1. Name the specific pattern (don't soften it into a vague "you might want
   to double check this").
2. Explain concretely what it does to the result's validity — not just "this
   is bad practice" but "this means the reported p-value is not a good
   estimate of the false-positive rate."
3. Offer the fix: correction method, relabeling as exploratory, reporting
   the sensitivity analysis including the excluded point, or reporting the
   full set of comparisons run.
4. Don't relitigate a locked, valid preregistered plan — if the plan already
   specifies exactly this analysis, this isn't p-hacking, it's execution.
   Check `preregistering-hypotheses.md` context before flagging.

## What this sub-skill does not do

It doesn't retroactively invalidate exploratory findings — exploratory work
is legitimate and often how good hypotheses get generated. Its job is
correct labeling, not gatekeeping curiosity. The failure mode it exists to
prevent is exploratory work being reported as if it were confirmatory.

## Related

`effect-size-over-significance.md` covers what to report once a result is
legitimately in hand; the same conversation usually needs both.
