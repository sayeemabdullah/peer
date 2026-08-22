# Peer

Peer is a discipline layer for academic and scientific research, built as a
custom skill for [Claude](https://claude.ai). It covers the whole research
lifecycle — forming a question, designing a study, running and analyzing it,
writing it up, getting reviewed, and revising afterward — and catches the
failure modes that are invisible in the moment and expensive later.

It is not a "find me papers" assistant. Peer doesn't replace expertise; it
supplies discipline at the points where research quietly drifts off track.

## Installing it

Peer is a [custom skill](https://claude.com/docs/skills/how-to) for
claude.ai (and the Claude apps/API surfaces that support custom skills) —
not a Claude Code project skill. Claude.ai loads custom skills from a bundle
file you upload, not from a folder on disk, so installing it is a two-step
grab-and-upload process.

**1. Get the bundle.**

Download **`peer.skill`** — the [Agent Skills](https://agentskills.io)
bundle, ready to upload as-is. Either grab it from the
[latest release](https://github.com/sayeemabdullah/peer/releases/latest) for
a tagged version, or take
[`peer.skill`](https://github.com/sayeemabdullah/peer/raw/main/peer.skill)
from the repo for the current state of `main`.

The committed bundle can't drift from the source files: CI rebuilds it on
every pull request and pushes the fresh copy onto the branch, and fails the
build if a bundle it can't push to is stale. A stale bundle would otherwise
fail silently — you'd upload it and get the old behavior with nothing to
indicate anything was wrong.

To build it yourself from a local checkout:

```bash
./build.sh
```

The bundle nests the `peer/` folder inside the archive (rather than
scattering files at the archive root), and the folder name matches the
`name` field in `SKILL.md` — claude.ai requires both:

```
peer.skill
└── peer/
    ├── SKILL.md
    ├── README.md
    └── references/
        ├── ...
        └── fields/
```

**2. Upload it in claude.ai.**

1. Go to **Settings → Customize → Skills** (or **Customize → Skills** from
   within a chat, depending on where your account surfaces it).
2. Click **+**, then **+ Create skill**.
3. Upload `peer.skill`.
4. Toggle the skill **on**. Custom skills you upload are private to your
   account.

If you're using the Claude API or Claude Code with skills sync instead of
claude.ai directly, the same bundle works there too — consult whichever
platform's own skill-loading docs for the equivalent upload step.

## Starting it

Claude.ai doesn't have slash commands for custom skills — there's nothing to
type to invoke Peer explicitly. Once it's enabled, Claude loads it on its
own the moment a research task shows up in the conversation: you upload a
manuscript, paste reviewer comments, ask about a p-value, or say "help me
analyze this data." The skill's `description` field is what Claude matches
against to decide when to pull it in, so if it doesn't trigger when you'd
expect, say what you're trying to do more explicitly (e.g. "review this
manuscript" rather than just pasting text with no framing).

Whenever it does trigger, the first thing that happens is the same: Peer
identifies what artifact (if any) you've given it, where you are in the
research lifecycle, and what field you're in, before it does any
substantive work. See [How it works](#how-it-works) below.

## The core premise

Most research failure isn't fraud. It's ordinary, well-intentioned drift:
running one more analysis, dropping an outlier that "looks wrong," writing
the hypothesis after seeing which comparison worked. Each step feels
reasonable alone. The damage shows up at peer review, or after publication,
or when someone tries to replicate.

Peer exists to make skipping a step **visible at the moment it's
happening**, not three months later — and to be a genuinely useful second
set of eyes at the two points where researchers are most alone:
pre-submission self-review, and post-review revision.

The single most important rule in the whole skill: **the hypothesis and
analysis plan get locked before the analysis is run.** Everything else is
secondary to that.

## What you can hand it

Peer works directly from real research artifacts, not abstract discussion:

- **Uploaded manuscripts** (PDF, .docx, .tex, .md) — a full paper or a single
  section
- **Pasted text** — an abstract, a section, a full draft, or a single
  paragraph
- **Reviewer comments**, uploaded or pasted, often as a messy unnumbered
  block from multiple reviewers
- **Datasets or summary statistics tables** (CSV, xlsx) for analysis review
- **Grant proposals and specific aims pages**
- **Preregistration drafts**

On receiving something, Peer identifies what it is, checks what you
actually want done with it (review, revise, check the stats, respond to it —
asking once if genuinely unclear), and routes to the right sub-skill. It
never silently reformats, rewrites, or "improves" an uploaded document
unless asked — your voice and your argument stay yours. If a file is
referenced but not actually attached, it says so and asks for it rather than
guessing at the contents.

## How it works

Every research task starts by establishing three things, in order:

1. **What artifact is on the table** (if any)
2. **Where you are in the research lifecycle**
3. **What field this is** — loading exactly one field file
   (`references/fields/`) so guidance matches your discipline's actual
   norms, rather than mixing conventions across fields

Only after that does it route to a focused sub-skill and start the
substantive work. If you say "help me analyze this data" with no mention of
a hypothesis, the first question is whether a plan existed before you saw
the data — that answer changes everything about how the analysis should be
framed and reported.

## Routing table

### Phase 1 — Before the study

| Stage | Sub-skill | What it forces |
|---|---|---|
| Forming a question | Literature review | Systematic search before assuming novelty |
| Locking the plan | Preregistering hypotheses | Hypothesis, primary outcome, and analysis plan locked before any data is seen |
| Choosing an approach | Method selection | Match design to question rather than defaulting to the familiar |
| Sizing the study | Power analysis | Sample size and effect size math up front, never backfilled |
| Before collecting | Ethics and bias check | IRB considerations, sampling bias, confounds caught before collection |
| Funding it | Grant writing | Specific aims, significance/innovation framing, budget justification, resubmission strategy |

### Phase 2 — Running and analyzing

| Stage | Sub-skill | What it forces |
|---|---|---|
| Managing the work | Data management | Versioning, provenance, reproducible pipelines, pre-stated exclusion rules |
| During analysis | Avoiding p-hacking | Flags multiple comparisons, HARKing, selective reporting, post-hoc outlier removal |
| Interpreting | Effect size over significance | Magnitude and confidence intervals always accompany significance |
| Before claiming | Replication check | "It ran once" is not a finding |

### Phase 3 — Writing and submitting

| Stage | Sub-skill | What it forces |
|---|---|---|
| Writing it up | Reporting standards | Field-appropriate guidelines (CONSORT, PRISMA, STROBE, etc.) |
| Drafting sections | Manuscript drafting | Structure and clarity per section, keeping your voice |
| Self-review | Adversarial review | Argues against your own paper as a hostile reviewer would; finds the weakest claim first |
| Choosing a venue | Submission strategy | Journal fit, scope match, preprint decisions, cover letter |

### Phase 4 — Peer review and after

| Stage | Sub-skill | What it forces |
|---|---|---|
| Reviewing someone else's work | Giving peer review | Structured, constructive critique separating fatal flaws from fixable ones |
| Reading your reviews | Receiving peer review | Evaluate feedback on merit — neither cave nor dig in |
| Deciding what to change | Revision planning | Triage every comment: accept / partially accept / push back, with effort estimates |
| Writing the response | Response to reviewers | Point-by-point letter, tied to specific changes and locations |
| After acceptance | Post-publication | Corrections, data/code sharing, post-publication critique, replication requests |

## Standing rules

These apply across every stage, not just the sub-skill that names them
first:

1. **The hypothesis gets locked before the analysis is run.** If it wasn't,
   everything downstream gets treated as exploratory.
2. **A result never gets to reshape the question it was meant to test.**
   Post-hoc findings can be interesting, but get labeled exploratory, never
   confirmatory.
3. **Effect size and uncertainty always accompany significance.** A
   p-value alone never fully answers "did it work."
4. **Exclusion rules are pre-stated.** Outlier removal decided after seeing
   results is a red flag, no matter how reasonable it sounds in isolation.
5. **Load-bearing citations are distinguished from padding.** A claim
   resting on one study is flagged differently from one backed by
   converging evidence.
6. **What didn't work gets reported too.** Failed conditions, null results,
   and abandoned analyses are part of the record.
7. **"This needs replication" gets said out loud**, rather than letting
   confidence outrun evidence.
8. **Nothing gets fabricated** — no citation, statistic, DOI, or quotation.
   Unverifiable claims are labeled as unverifiable.
9. **Your voice is preserved.** Peer suggests, critiques, and drafts on
   request; it doesn't quietly rewrite your paper into its own style.
10. **Honesty over encouragement**, especially in self-review and revision
    planning. A comfortable review that misses a fatal flaw is worse than
    no review.

## Fields covered

Exactly one field file loads per session, based on what you're working on:

- **Psychology**
- **Clinical / biomedical**
- **Machine learning**
- **Social science** (sociology, political science, economics, and related
  fields)
- **General** — the fallback, used when your field isn't one of the above,
  or isn't yet known. Peer says plainly when it's using general defaults
  instead of field-specific norms, so you know to double-check anything
  field-sensitive against your own discipline's conventions.

## What Peer is not

- **Not a replacement for a statistician.** It flags problems and asks the
  right questions; it does not certify that an analysis is correct.
- **Not an IRB.** Ethics checks are preparation aids, not approval.
- **Not a literature database.** It structures the search and evaluates
  what's found; it doesn't guarantee a systematic review is complete.
- **Not a source of citations from memory.** Anything cited must be
  verifiable; unverified claims are labeled as such.
- **Not a ghostwriter.** Peer drafts and critiques on request, but the
  paper and the argument remain yours.

## Structure

```
peer/
├── SKILL.md                            — anchor: routing, standing rules,
│                                          artifact/stage/field detection
├── README.md                           — this file
├── build.sh                            — builds peer.skill for upload
├── peer.skill                          — the bundle; kept current by CI
├── .github/workflows/build.yml         — validates, rebuilds, and commits the
│                                          bundle; publishes it on a v* tag
└── references/
    ├── literature-review.md
    ├── preregistering-hypotheses.md
    ├── method-selection.md
    ├── power-analysis.md
    ├── ethics-and-bias-check.md
    ├── grant-writing.md
    ├── data-management.md
    ├── avoiding-p-hacking.md
    ├── effect-size-over-significance.md
    ├── replication-check.md
    ├── reporting-standards.md
    ├── manuscript-drafting.md
    ├── adversarial-review.md
    ├── submission-strategy.md
    ├── giving-peer-review.md
    ├── receiving-peer-review.md
    ├── revision-planning.md
    ├── response-to-reviewers.md
    ├── post-publication.md
    └── fields/
        ├── general.md
        ├── psychology.md
        ├── clinical-biomedical.md
        ├── machine-learning.md
        └── social-science.md
```

Each reference file loads only when its stage is active — Peer never pulls
the whole tree into context at once.

## Contributing

Peer lives at
[github.com/sayeemabdullah/peer](https://github.com/sayeemabdullah/peer).
Field coverage and sub-skill sharpening are the most useful contributions —
particularly field files for disciplines not yet covered (economics,
ecology, materials science, education) and corrections from people who
actually work in a covered field.

**1. Fork and branch.**

```bash
gh repo fork sayeemabdullah/peer --clone
cd peer
git checkout -b add-ecology-field
```

Use a branch name that says what changes. Don't commit to `main`.

**2. Make the change.**

Keep each sub-skill short and single-purpose — a sprawling file makes Claude
worse at the specific moment it's meant to handle. If you're adding a new
sub-skill or field file, wire it into the routing table in **both**
`SKILL.md` (which Claude reads) and this README (which people read), and add
it to the structure diagram above.

**3. Build and test it before opening the PR.**

```bash
./build.sh
```

Commit the resulting `peer.skill` alongside your changes. If you forget, CI
rebuilds it and pushes the fresh bundle onto your branch automatically — but
only for branches in this repo. A PR from a fork gets a read-only token, so
CI can't push there and will fail the build instead, asking you to run
`./build.sh` and commit the result yourself.

Upload your local build to claude.ai (see
[Installing it](#installing-it)) and try prompts that should trigger your
change. For a new field file, confirm Claude loads *that* file and not
`general.md`. For a sub-skill edit, confirm the behavior actually shifts —
skill instructions that read well don't always change what Claude does.

CI runs on every PR and will fail the build if the `description` exceeds
claude.ai's 200-character limit, if `SKILL.md` grows past 500 lines, if
`SKILL.md` routes to a reference file that doesn't exist, or if the bundle
comes out with the wrong structure. Those are cheap to check locally first.

**4. Open the PR.**

```bash
git commit -am "Add ecology field file"
git push -u origin add-ecology-field
gh pr create
```

In the PR description, say what you changed, what you tested it against,
and — if you work in the field you're editing — say so. Field norms are
exactly the kind of thing that's hard to verify from outside a discipline,
so firsthand knowledge carries real weight in review.

`main` is protected: changes land through a PR that passes CI and carries
the owner's approval, never through a direct push. Merged branches are
deleted automatically.

**What tends to get pushed back on:** field-specific claims stated with more
confidence than the contributor can back up, sub-skills that grow into
general essays, and changes that soften the standing rules. Rules 1, 8, and
10 (lock the hypothesis, never fabricate, honesty over encouragement) are
the load-bearing ones — a change that weakens them needs a strong argument.
