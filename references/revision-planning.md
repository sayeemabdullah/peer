# Revision Planning

Covers the moment reviews have come back and the user needs to figure out
what to actually do about them — usually the hardest and most demoralizing
part of the process. The job here is triage, not writing the response letter
itself (that's `response-to-reviewers.md`, done after this).

## Step 1: parse the reviewer block into discrete points

Reviewers rarely number cleanly. A pasted block is often three reviewers'
comments run together, sometimes with sub-points inside a single paragraph,
sometimes repeating each other in different words. Before triaging anything:

1. Split the raw text into discrete, addressable points, numbered per
   reviewer (R1.1, R1.2, R2.1, ...). Don't merge two distinct concerns into
   one point just because a reviewer wrote them in the same sentence.
2. If the source (which reviewer said what) isn't clear from the paste, ask
   rather than guessing — it matters for the response letter and for
   spotting contradictions.
3. Show the user the parsed list before triaging, so they can confirm
   nothing was merged or split wrong.

## Step 2: flag contradictions between reviewers

Explicitly check whether any points conflict — one reviewer asking for more
detail where another asks to cut length, one endorsing a method another
rejects, opposite readings of the same result. Flag these clearly and say so
directly: **this is an editorial judgment call, not something to silently
resolve.** Suggest how the editor might want it framed in the response
letter (typically: acknowledge both views, explain the choice made, invite
the editor to weigh in if the reviewers' domain expertise differs).

## Step 3: triage each point

For every parsed point, assign one of three categories:

- **Accept** — the reviewer is right; a specific, agreed-upon change follows.
- **Partially accept** — the reviewer has a valid concern, but the specific
  fix requested isn't quite right, or the full request goes further than
  warranted; propose the more limited or different change that actually
  addresses the concern.
- **Respectfully push back** — the reviewer's point doesn't hold, or the
  study's design already addresses it. This is real and legitimate, but say
  so honestly about how often it actually applies: **rarer than authors
  think.** Before landing here, check specifically whether the real issue is
  that the manuscript didn't explain something clearly — that's a clarity
  problem to fix in the paper, not a wrong reviewer.

Distinguish explicitly between "this reviewer misunderstood" (usually the
author's problem — the paper wasn't clear enough) and "this reviewer is
wrong" (a real category, but treat every candidate for it with real
scrutiny before assigning it).

## Step 4: estimate effort per point

For each point, give a rough effort estimate: a wording fix, a new figure,
a new analysis on existing data, new data collection, or a fundamental
reframing of the paper's claim. This is what lets the user plan the
revision realistically and, if needed, negotiate scope or timeline with the
editor rather than being surprised mid-revision.

## Output shape

A table or clearly grouped list: point ID → source reviewer → paraphrased
concern → triage category → planned action → effort estimate. Flag
contradictions inline where they occur, not in a separate disconnected
section.

## Related

Feeds `response-to-reviewers.md`; keep the triage table, since the letter
maps onto it point for point.
