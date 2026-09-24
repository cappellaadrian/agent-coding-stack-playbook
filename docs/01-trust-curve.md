# Trust curve

From Lauren Tan's Maven workshop (transcript: https://cho.sh/7D77B5; video: https://www.youtube.com/watch?v=Cmoh-yR-usA).

## The management analogy

If you do not trust an engineer, you micromanage. Same with agents: low trust ⇒ heavy in-loop watching, no parallelism. High trust ⇒ you can parallelize and eventually merge with evidence.

Trust is **personal and gradual**. There is no shortcut from "watching every tool call" to "hundreds of cloud agents."

## Stages (as described)

```text
heavy in-loop
    → local verification (agent runs the real app)
        → cloud agents (same skills, company-wide leverage)
            → auto-merge (advanced; CI + evidence)
                → review on main
```

### 1. Heavy in-loop

- Few agents; you read every output.
- You are the verifier and the bottleneck.
- Typical failure: agent confidently names a "smoking gun" without reading the right code.

### 2. Local verification

- **Verification is the #1 skill** in the toolbox.
- Agent runs the real product surface (dev build, CDP, simulator, traces) — not only unit tests.
- Compiles ≠ correct. Correct ≠ good — but correct is the step that unlocks trust.
- Put the **finish condition in the first prompt**.

### 3. Cloud agents

- Same verification skills pay off for the whole team.
- Example pattern (Cursor-internal **Benny**): bug report → cloud desktop → repro with control skills → PR or "already fixed on main."
- Do **not** jump here while stage 1–2 trust is missing (token burn, slop).

### 4–5. Auto-merge and review on main

- Lauren described waking to many PRs already landed and reviewing on `main`.
- That depends on hard CI, verification evidence, and org-specific automation.
- Treat auto-merge as an **earned end state**, not a day-one setting. Mark Cursor's exact auto-merge wiring as internal unless you build your own.

## Velocity claims (as stated in workshop)

Transcript includes personal velocity anecdotes (e.g. order-of-magnitude PR counts after climbing the curve). Treat them as **her context at Cursor** (unlimited tokens, internal infra), not as a universal KPI. See ROI discussion in the same session: upfront token spend vs hiring vs nimble agent leverage.

## What to do this week

1. Pick one product surface and write a verify skill (Launch / Doctor / Drive / Evidence / Cleanup).
2. Force repro-before-fix on the next three bugs.
3. Convert one recurring review nit into a CI fail.
4. Only then schedule a cloud agent on a low-risk ticket.
