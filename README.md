# Agent Coding Stack Playbook

A practical playbook for climbing the **agent trust curve**: from heavy-in-the-loop prompting to local verification, cloud agents, and (eventually) merge-ready PRs with evidence.

Based on public research from **Lauren Tan ([@poteto](https://x.com/poteto))** — Cursor engineer, React core team — including her Maven workshop (Aug 2026), YouTube talk, X article *How I Use Cursor*, and the **pstack** / **open-pstack** ecosystems.

> **Attribution:** Encode Lauren's methods; do not treat Cursor/SpaceX-internal tooling as something you can install today. See [Installable vs internal](#installable-today-vs-internal) and [`docs/gaps.md`](docs/gaps.md).

## Clone

```bash
git clone https://github.com/cappellaadrian/agent-coding-stack-playbook.git
cd agent-coding-stack-playbook
```

**Public repo** so Claude Code (and teammates) can clone without auth gymnastics.

## How to use with Claude Code

1. Clone this repo (or add it as a project / reference folder next to your app).
2. In your **product** repo, copy or symlink:
   - `AGENTS.md` → root (adapt nouns to your stack)
   - `CLAUDE.md` → root (or merge the pointer into an existing one)
   - `.cursor/rules/` and `.cursor/skills/verify-app/` → adapt the verify skill to *your* app
   - `scripts/doctor.sh` / `scripts/self-check.sh` → wire to real health checks
3. Install **open-pstack** for Claude Code (community port of pstack):

   ```text
   /plugin marketplace add ericlitman/open-pstack
   /plugin install pstack@open-pstack
   /reload-plugins
   ```

   See [ericlitman/open-pstack](https://github.com/ericlitman/open-pstack).

4. Start Claude Code in the product repo:

   ```bash
   claude
   ```

   Or open the cloned playbook as a reference project and tell Claude to follow `AGENTS.md` + `docs/`.

5. First prompts should set a **finish condition** and demand **real-app evidence** (not "tests pass").

## How to use with Cursor

1. Install **pstack** (Lauren's upstream plugin):

   ```text
   /add-plugin pstack
   ```

   Upstream: [cursor/plugins/pstack](https://github.com/cursor/plugins/tree/main/pstack)

2. Copy this playbook's `AGENTS.md`, `.cursor/rules/`, and `.cursor/skills/verify-app/` into your app; run `/create-verification-skill` (from pstack) to generate a real feature map for *your* product.

3. Prefer `/poteto-mode` (or `/lauren-mode` where available) for rigorous work. Pair with `/goal`, `/loop`, `/swarm` as needed — see [`examples/poteto-mode-prompts.md`](examples/poteto-mode-prompts.md).

4. Keep soft rules in `.cursor/rules/`; put **hard** bans in CI (see [`examples/ci/ban-patterns.EXAMPLE.yml`](examples/ci/ban-patterns.EXAMPLE.yml)).

## Trust curve (summary)

| Stage | Mode | What unlocks the next stage |
|-------|------|-----------------------------|
| 1 | Heavy in-loop | Observe failure modes; encode skills |
| 2 | Local verification | Agent runs the **real** app; compiles ≠ evidence |
| 3 | Cloud agents | Same verification skills in cloud desktops |
| 4 | Auto-merge (advanced) | Hard CI + evidence; human reviews on `main` |
| 5 | Review on main | Trust earned; still audit decision logs |

Details: [`docs/01-trust-curve.md`](docs/01-trust-curve.md).

## Installable today vs internal

| Installable / public today | Cursor / SpaceX-internal (do not assume you have this) |
|----------------------------|--------------------------------------------------------|
| [pstack](https://github.com/cursor/plugins/tree/main/pstack) Cursor plugin | Grok Bot as shipped at Cursor |
| [open-pstack](https://github.com/ericlitman/open-pstack) for Claude Code / Codex | **Dune** framework (principles yes; OSS package no) |
| `/create-verification-skill`, `/maintain-verification-skill` (via pstack) | **Benny** as-shipped webhook→agent factory |
| Feature-map *pattern*; this repo's verify-app **template** | Unlimited tokens / lab-scale spend |
| Hard CI lints you write yourself | Overnight auto-merge of cloud PRs |
| Atomic PR habits + PR templates | Internal Control Glass / Agents Window skills |

**Dune** is treated here as a **method** (shortest path = best path, feature colocation, import-graph CI, ban fragile patterns), not as a downloadable framework. See [`docs/03-hard-guards-vs-soft-rules.md`](docs/03-hard-guards-vs-soft-rules.md).

## Docs map

| Doc | Topic |
|-----|--------|
| [`docs/00-sources.md`](docs/00-sources.md) | All source URLs |
| [`docs/01-trust-curve.md`](docs/01-trust-curve.md) | Trust progression |
| [`docs/02-verification-and-feature-maps.md`](docs/02-verification-and-feature-maps.md) | Launch / Doctor / Drive / Evidence / Cleanup |
| [`docs/03-hard-guards-vs-soft-rules.md`](docs/03-hard-guards-vs-soft-rules.md) | CI > soft rules; Dune principles |
| [`docs/04-pr-and-shipping.md`](docs/04-pr-and-shipping.md) | Atomic PRs; writer ≠ verifier |
| [`docs/05-evals-and-skill-maintenance.md`](docs/05-evals-and-skill-maintenance.md) | Evals as unit tests for skills |
| [`docs/gaps.md`](docs/gaps.md) | What we deliberately did **not** invent |

## Scripts

- `scripts/doctor.sh` — environment / app health probe (adapt me)
- `scripts/self-check.sh` — playbook completeness check

## Sources (primary)

- YouTube: https://www.youtube.com/watch?v=Cmoh-yR-usA
- Transcript: https://cho.sh/7D77B5
- Maven workshop listing: https://maven.com/p/e23d9c
- X: *How I Use Cursor* (@poteto)
- pstack: https://github.com/cursor/plugins/tree/main/pstack
- open-pstack: https://github.com/ericlitman/open-pstack

**Duration note:** Some Instagram clips claim “38 min”; that is likely an edit. The full Maven / YouTube workshop is roughly **50–60 minutes** (transcript ends ~55:40).

## License / intent

This playbook is a synthesis for personal / team use. Prefer Lauren's upstream pstack wording when in doubt. File issues against invented details in [`docs/gaps.md`](docs/gaps.md) rather than "fixing in" talk quotes.
