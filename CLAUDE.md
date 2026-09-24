# Claude Code — read this first

You **must** follow:

1. [`AGENTS.md`](./AGENTS.md) — operating contract (verification, atomic PRs, hard CI, writer ≠ verifier).
2. Everything under [`docs/`](./docs/) — trust curve, feature maps, guards, PR/shipping, evals, and [`docs/gaps.md`](./docs/gaps.md).

Also respect:

- `.cursor/rules/*.mdc` (Cursor rules; treat as binding guidance in Claude Code too).
- `.cursor/skills/verify-app/` when verifying UI/app behavior.

### Claude Code + pstack

Prefer **open-pstack** ([ericlitman/open-pstack](https://github.com/ericlitman/open-pstack)) so poteto-mode workflows are available outside Cursor. Use Lauren's upstream [pstack](https://github.com/cursor/plugins/tree/main/pstack) when the primary IDE is Cursor.

If this file lives in a product monorepo that also has its own `CLAUDE.md`, merge by **pointer**: keep product-specific notes here and require the playbook `AGENTS.md` + `docs/` for agent discipline.
