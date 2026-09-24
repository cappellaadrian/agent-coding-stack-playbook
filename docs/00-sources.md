# Sources

Primary materials for this playbook. Prefer these over secondary summaries. Do **not** invent quotes; if something is missing, add it to [`gaps.md`](./gaps.md).

## Lauren Tan / poteto

| Source | URL | Notes |
|--------|-----|--------|
| YouTube talk / workshop recording | https://www.youtube.com/watch?v=Cmoh-yR-usA | Full session ~50–60 min |
| Transcript (cho.sh) | https://cho.sh/7D77B5 | Timed transcript; ends ~55:40 |
| Maven workshop listing | https://maven.com/p/e23d9c | Aug 2026 workshop with Denis Labelle |
| X article: *How I Use Cursor* | Search `@poteto` / Thread Navigator mirrors (e.g. threadnavigator.com) | Announces open-sourcing pstack; Benny pattern; poteto-mode |
| Twitter / X profile | https://x.com/poteto | Lauren Tan (@poteto) |

**Duration caveat:** Instagram or short clips may claim “38 min.” Treat that as a likely **edit**. The full Maven/YouTube workshop runs roughly **50–60 minutes**.

## pstack / open-pstack

| Source | URL | Notes |
|--------|-----|--------|
| pstack (upstream, Cursor plugin tree) | https://github.com/cursor/plugins/tree/main/pstack | Lauren's plugin: poteto-mode, verification skills, playbooks |
| pstack guide README | https://github.com/cursor/plugins/blob/main/pstack/docs/guide/README.md | Goal + checkable outcome; overnight contracts |
| open-pstack (Claude Code / Codex port) | https://github.com/ericlitman/open-pstack | Unofficial community port; tracks upstream pstack versions |

## Senior Engineer Mode (Claude process)

| Source | URL | Notes |
|--------|-----|--------|
| Instagram carousel | https://www.instagram.com/p/DdpuWcNHHSM/ | @godofprompt; PART 1–5 process mega-prompt |
| Publisher | https://www.instagram.com/godofprompt/ | @godofprompt |
| Credited origin | https://x.com/aiedge_ | @aiedge_ / X — credit on the IG post |
| Claude Mastery Guide (CTA) | Comment “CLAUDE” on IG post; https://godofprompt.ai/guides/claude-mastery-guide | **Not encoded** — paid/DM gap |

Playbook encoding: [`06-claude-opus-senior-engineer-mode.md`](./06-claude-opus-senior-engineer-mode.md), [`../prompts/claude-senior-engineer-mode.md`](../prompts/claude-senior-engineer-mode.md). The paste-ready prompt is a **reconstructed composite** from the carousel inventory when no public verbatim X full text was found.

## Concepts named in sources (not separate products)

- **Trust curve** — Maven/YouTube transcript
- **Control Glass** / Agents Window verification skill — transcript (Glass = internal Agents Window codename)
- **Feature map** — transcript + pstack `/create-verification-skill`
- **Dune** — transcript: cheeky architecture for Grokbot; principles, not OSS
- **Benny** — X article + transcript: webhook/Slack → cloud agent → repro/fix/PR pattern
- **Grok Bot** — Cursor product mentioned in workshop; internal/product, not this repo
- **Senior Engineer Mode** — process prompt (IG carousel); not a Claude model variant

## This repository

| Item | URL |
|------|-----|
| Playbook repo | https://github.com/cappellaadrian/agent-coding-stack-playbook |

## How to cite in PRs / skills

```text
Source: Lauren Tan Maven workshop transcript https://cho.sh/7D77B5
Source: pstack https://github.com/cursor/plugins/tree/main/pstack
Source: Senior Engineer Mode IG https://www.instagram.com/p/DdpuWcNHHSM/ (@godofprompt; credit @aiedge_)
```

If you cannot find a claim in the table above, it belongs in `gaps.md`, not in agent instructions as fact.
