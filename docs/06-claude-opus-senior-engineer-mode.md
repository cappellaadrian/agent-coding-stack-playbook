# Claude Opus "Senior Engineer Mode" (process mega-prompt)

A **process** prompt (not a model swap) for greenfield builds and feature work with Claude Code / Claude Opus. Encoded from a public Instagram carousel; complementary to Lauren Tan / poteto verification principles in this playbook.

> **Do not confuse with the paid/DM "Claude Mastery Guide."** That guide is gated behind an Instagram comment CTA and is **not** reproduced here. See [Gaps](#gaps).

## Sources

| Source | URL / handle | Role |
|--------|----------------|------|
| Instagram carousel | https://www.instagram.com/p/DdpuWcNHHSM/ | Primary public text (slide inventory below) |
| Account | [@godofprompt](https://www.instagram.com/godofprompt/) | Publisher of the carousel |
| Original credit | [@aiedge_](https://x.com/aiedge_) / X | Credited source of the mega-prompt idea |
| Claude Mastery Guide (paid/DM) | Comment "CLAUDE" on the IG post / [godofprompt.ai guide page](https://godofprompt.ai/guides/claude-mastery-guide) | **Not available** to this playbook — gap only |

**Search note (2026-09-24):** Web search / fetch did **not** surface a public, verbatim full-text X post of this specific "Senior Engineer Mode" mega-prompt. This playbook therefore ships a **faithful composite reconstructed from the IG carousel inventory**, clearly labeled as reconstructed — not as a leaked or transcribed Mastery Guide.

## Caption themes (from the post)

- "Vibe coding" one-liners like "build me an app" fail because they skip process.
- This mega-prompt fixes **how** you work with the model (discovery → plan → build → verify), not which model you pick.
- Paste an idea, PRD, or repo at the end; **plan before build**.

## Carousel inventory (encode faithfully)

| Slide | Content (paraphrased from browser report; do not invent beyond this) |
|-------|------------------------------------------------------------------------|
| 1 | Hook: everyone's testing Claude Opus 5.5 the wrong way… swipe |
| 2 | **PART 1 — role / discovery:** act as principal engineer, architect, and ruthless code reviewer; clarify goal, user, workflow, must-have features, stack, constraints; **inspect repos first** |
| 3 | **PART 2 — architecture / build:** design structure, modules, APIs, DB schema, error paths; prefer proven patterns and minimal deps; build small working slices with typed code; handle loading / empty / error / permission states; avoid fake implementations, dead code, and unapproved TODOs |
| 4 | **PART 3 — quality / security:** responsive, accessible, consistent UI; graceful failures; no hard-coded secrets; validate input; server-side auth; reversible migrations; warn before destructive data changes |
| 5 | **PART 4 — verification / refactoring:** run linter, type checker, tests, build; fix root causes; review complexity / duplication / naming / edge cases; refactor only when useful; verify again |
| 6 | **PART 5 — activation:** paste idea / PRD / repo; summarize understanding; flag riskiest assumptions; propose a plan **then** build; keep momentum on low-risk decisions; pause before destructive or expensive actions |
| 7 | CTA: comment "CLAUDE" for the full Claude Mastery Guide (**gap** — we do not have that content) |

## Installable vs gap

| Artifact | Status |
|----------|--------|
| Reconstructed Senior Engineer Mode prompt | **Installable** — [`prompts/claude-senior-engineer-mode.md`](../prompts/claude-senior-engineer-mode.md) |
| Claude Code skill wrapper | **Installable** — [`.claude/skills/senior-engineer-mode/SKILL.md`](../.claude/skills/senior-engineer-mode/SKILL.md) |
| Full verbatim X/@aiedge_ original post text | **Not found** publicly at encode time — use reconstructed composite |
| "Claude Mastery Guide" (comment-"CLAUDE" / paid/DM) | **Gap** — do not fabricate; link CTA only |

## How this fits the playbook

| Layer | Use for |
|-------|---------|
| **Senior Engineer Mode** (this doc) | Greenfield apps, new features, architecture + disciplined build loop |
| **poteto / pstack / verify-app** | Finish conditions, repro-before-fix, real-app evidence, writer ≠ verifier |

They are **complementary**: Senior Engineer Mode improves the build process; poteto principles still govern what "done" means (evidence from the real app, atomic PRs, hard CI).

## How to use in Claude Code

1. Clone or open this playbook (or copy the prompt/skill into your product repo).
2. **Option A — paste:** open [`prompts/claude-senior-engineer-mode.md`](../prompts/claude-senior-engineer-mode.md), copy the fenced prompt, paste into Claude Code, then append your idea / PRD / repo path.
3. **Option B — skill:** with the playbook (or a copy of `.claude/skills/senior-engineer-mode/`) on the project, ask Claude to use **senior-engineer-mode** / "Senior Engineer Mode."
4. Still follow root [`AGENTS.md`](../AGENTS.md) for verification and shipping rules.

## Related

- [`prompts/claude-senior-engineer-mode.md`](../prompts/claude-senior-engineer-mode.md) — paste-ready prompt
- [`.claude/skills/senior-engineer-mode/SKILL.md`](../.claude/skills/senior-engineer-mode/SKILL.md) — when-to-use wrapper
- [`gaps.md`](./gaps.md) — Mastery Guide + missing X verbatim text
- [`00-sources.md`](./00-sources.md) — source table entry
