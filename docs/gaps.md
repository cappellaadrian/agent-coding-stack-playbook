# Gaps (do not fabricate)

Things we **deliberately omit or mark uncertain** because public sources do not fully specify them. Prefer linking upstream over inventing.

## Talk / workshop

| Gap | Notes |
|-----|--------|
| Exact slide deck / drawings | Not reproduced; chart described narratively in transcript |
| Precise PR averages / hard LOC caps | Lauren declined hard caps; ranges only |
| Exact CI job names inside Cursor/Grokbot | Described qualitatively (useEffect ban, comment ban, import CI) |
| Instagram “38 min” | Likely edit; full session ~50–60 min per YouTube/transcript |
| Maven paywall details | Listing URL only: https://maven.com/p/e23d9c |

## Internal Cursor / SpaceXAI items (not installable here)

| Item | Status |
|------|--------|
| Control Glass skill source | Pattern only; internal Agents Window tooling |
| Dune framework package | Principles documented; **not** OSS |
| Benny bot as shipped | Pattern (webhook → cloud agent → PR) documented; implementation internal |
| Grok Bot product internals | Mentioned in talk; out of scope |
| Unlimited tokens / lab pricing | Acknowledged as non-universal |
| Auto-merge overnight pipelines | End-state on trust curve; wiring not published as turnkey |
| Exact Slack channel automations | Anecdotal in talk/X article |

## pstack / open-pstack

| Gap | Notes |
|-----|--------|
| Full skill source dump | Point to upstream repos; do not vendor entire plugin |
| Version pinning policy | open-pstack tracks specific upstream commits; check their README |
| Every playbook name | See pstack guide; examples in `examples/poteto-mode-prompts.md` are attributed prompts, not a complete catalog |
| Multi-model routing defaults | Configure via pstack setup; model matrix changes over time |

## This playbook's templates

| Gap | Notes |
|-----|--------|
| verify-app feature maps | **Placeholders** — run `/create-verification-skill` on your app |
| doctor.sh / self-check.sh | Stubs — wire to real health checks |
| ban-patterns CI | **EXAMPLE** only — adapt to your stack (banning useEffect may be wrong for your app) |

## Contribution rule

If you want to add a claim: cite `docs/00-sources.md` with URL + section, or add a new row here as unknown. Do not promote guesses into `AGENTS.md`.
