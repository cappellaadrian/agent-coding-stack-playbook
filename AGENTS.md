# Agent operating contract

You are working in a codebase that follows the Lauren Tan / poteto / pstack playbook. Soft suggestions are not enough — treat the items below as **required** unless a human explicitly waives them in the prompt.

Full context: `docs/` in this repo (or the playbook you were given). Cursor rules: `.cursor/rules/`. Verification skill template: `.cursor/skills/verify-app/`.

## 1. Prove a real artifact

- Compiling, typechecking, or "tests passed" is **not** sufficient evidence by itself.
- Run the **real application** (or the closest real surface: CLI, simulator, Electron, browser) and show observable behavior.
- Prefer screenshots, traces, logs, heap/CPU snapshots, or scripted UI drives — whatever your verify skill defines.
- Put a **finish condition** in the first prompt (or derive one immediately): what a human would see when done.

## 2. Repro before fix

- Reproduce the bug or missing behavior **before** changing product code.
- If you cannot repro, say so and stop escalating to speculative fixes.
- Capture repro evidence under the verify skill's Evidence step.

## 3. Atomic PRs

- Split work so each PR atomically describes one change.
- Prefer several small PRs over one mega-diff (easier revert, richer git history as context).
- No hard LOC cap, but avoid 40k-line "who knows what landed" PRs.

## 4. Hard CI over soft rules

- If a human would n-it the same mistake twice, turn it into a **lint / CI failure**, not another markdown rule.
- Soft layers (AGENTS.md, Cursor rules, Bugbot, skills) help — they are not the only enforcement.
- See `docs/03-hard-guards-vs-soft-rules.md` and `examples/ci/ban-patterns.EXAMPLE.yml`.

## 5. Feature colocation

- Keep a feature's code in **one directory** when the architecture allows it.
- Agents copy existing patterns: make the short, colocated path the correct path.

## 6. Shortest path = best path

- Design the codebase so the convenient shortcut agents take **is** the high-quality path.
- Do not rely on agents choosing the long, virtuous route when a footgun is shorter.

## 7. Writer ≠ verifier

- The agent (or human) that wrote the change must not be the sole verifier.
- Prefer a **fresh agent** (new session / subagent) to run the verify skill against the PR.
- Babysitting stops at **merge-ready** (CI green + evidence attached) — not at "I think it works."

## 8. Use the verify skill

- Follow `.cursor/skills/verify-app/SKILL.md`: **Launch → Doctor → Drive → Evidence → Cleanup**.
- `/create-verification-skill` and `/maintain-verification-skill` (pstack) build/maintain feature maps; **maintain must not edit product code**.
- Feature map index: `.cursor/skills/verify-app/features/README.md`.

## 9. Skills from failure modes

- When you observe a failure mode (hallucinated smoking gun, skipped code read, guessed root cause), propose a skill or CI rule — do not only apologize and continue.

## 10. Overnight / unattended work

- Only with an explicit overnight contract (`examples/overnight-contract.md`): decision log, stop conditions, evidence requirements, no silent scope expansion.

## 11. Greenfield / feature builds — Senior Engineer Mode

- When building a **new app** or a **non-trivial feature**, prefer the **Senior Engineer Mode** process (discover → plan → slice-build → secure → verify) over vibe-coding one-liners.
- Paste-ready prompt: `prompts/claude-senior-engineer-mode.md`. Skill: `.claude/skills/senior-engineer-mode/SKILL.md`. Notes: `docs/06-claude-opus-senior-engineer-mode.md`.
- This is **complementary** to poteto verification principles above — it improves how you plan and build; §§1–8 still define what “done” and “merge-ready” mean (real-app evidence, writer ≠ verifier).
- Do **not** invent the gated “Claude Mastery Guide”; that content is a documented gap.

## Non-goals

- Do not claim access to Cursor-internal tools (Grok Bot product, Dune as OSS, Benny as shipped, unlimited tokens).
- Do not invent talk quotes or timestamps; cite `docs/00-sources.md` or mark gaps in `docs/gaps.md`.
