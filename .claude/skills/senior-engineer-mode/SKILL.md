---
name: senior-engineer-mode
description: Disciplined greenfield/feature build process — discover, plan, slice-build, secure, verify. Use when starting apps/features or when vibe-coding one-liners would skip architecture. Complementary to poteto/verify-app evidence rules.
---

# Senior Engineer Mode

> Process mega-prompt reconstructed from [@godofprompt](https://www.instagram.com/godofprompt/) IG carousel https://www.instagram.com/p/DdpuWcNHHSM/ (credit [@aiedge_](https://x.com/aiedge_)). **Not** the paid/DM Claude Mastery Guide. Full notes: `docs/06-claude-opus-senior-engineer-mode.md`. Paste-ready body: `prompts/claude-senior-engineer-mode.md`.

## When to use

- Greenfield app or substantial new feature
- User said "build me an app / add X" without a plan
- Need principal-engineer discovery → architecture → slice build → security → verify loop
- Before dumping code into an unfamiliar repo (inspect first)

## When not to use (alone)

- Pure verification / merge-ready checks → use **verify-app** / poteto finish-condition flow
- Overnight unattended runs → use `examples/overnight-contract.md` **plus** this mode's pause rules
- Do **not** invent Mastery Guide content if asked for the "full Claude guide"

## Procedure

1. Load and follow the paste-ready prompt in `prompts/claude-senior-engineer-mode.md` (PART 1–5).
2. Inspect the target repo before proposing structure.
3. Summarize understanding + riskiest assumptions; propose a plan; then build small typed slices.
4. Enforce PART 3 security/quality bars (no secrets in code, server-side auth, reversible migrations, warn before destructive data changes).
5. Run linter / types / tests / build; fix root causes; verify again.
6. Obey product `AGENTS.md`: real-app evidence still required when the verify skill applies (writer ≠ verifier).

## Anti-patterns

- Skipping discovery and coding from a one-line vibe prompt
- Fake implementations, dead code, or unapproved TODOs
- Claiming "done" from green unit tests alone when verify-app is in play
- Fabricating the gated Claude Mastery Guide
