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

## Concepts named in sources (not separate products)

- **Trust curve** — Maven/YouTube transcript
- **Control Glass** / Agents Window verification skill — transcript (Glass = internal Agents Window codename)
- **Feature map** — transcript + pstack `/create-verification-skill`
- **Dune** — transcript: cheeky architecture for Grokbot; principles, not OSS
- **Benny** — X article + transcript: webhook/Slack → cloud agent → repro/fix/PR pattern
- **Grok Bot** — Cursor product mentioned in workshop; internal/product, not this repo

## This repository

| Item | URL |
|------|-----|
| Playbook repo | https://github.com/cappellaadrian/agent-coding-stack-playbook |

## How to cite in PRs / skills

```text
Source: Lauren Tan Maven workshop transcript https://cho.sh/7D77B5
Source: pstack https://github.com/cursor/plugins/tree/main/pstack
```

If you cannot find a claim in the table above, it belongs in `gaps.md`, not in agent instructions as fact.
