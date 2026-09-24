# Verification and feature maps

Sources: Maven/YouTube transcript; pstack `/create-verification-skill` and `/maintain-verification-skill`.

## Why verification beats vibes

Without a verification skill, **you** are the loop:

1. Agent edits code.
2. You open the app.
3. You paste screenshots / console errors back.
4. Repeat — no parallelism.

With verification, the agent launches the real app, drives features, and attaches evidence.

## Control Glass (internal example)

Lauren's early skill for Cursor **Agents Window** (internal codename **Glass**): teach the agent to run the app and take traces (e.g. Chrome DevTools Protocol / platform utilities). The interesting part for outsiders is the pattern, not the private skill body.

## Feature map

A skill that can launch the app still fails if the agent **cannot navigate** features ("left sidebar laggy", screenshot + "???").

A **feature map** teaches:

- User-facing path to each feature
- Keyboard shortcuts
- Selectors / DOM attributes for automation (CDP, etc.)
- Sub-features under each area

pstack helps generate and maintain this:

| Skill | Role |
|-------|------|
| `/create-verification-skill` | Explore codebase; scaffold skill + initial feature map |
| `/maintain-verification-skill` | Keep maps/skills current as the product changes; **must not edit product code** |

## Template in this repo: Launch → Doctor → Drive → Evidence → Cleanup

See `.cursor/skills/verify-app/SKILL.md`:

| Step | Intent |
|------|--------|
| **Launch** | Start the real app / stack in a known mode |
| **Doctor** | Health checks (deps, env, ports, migrations) — fail fast |
| **Drive** | Navigate via feature map; exercise the finish condition |
| **Evidence** | Capture logs, screenshots, traces, before/after |
| **Cleanup** | Tear down processes, temp profiles, ports |

Adapt placeholders to *your* app. Empty placeholders are intentional — do not pretend Glass internals ship here.

## Finish condition

Encode in the first prompt, e.g.:

```text
Finish when: from a clean login, Settings → Export produces a CSV with N rows
matching fixture F, screenshot attached, and doctor.sh exits 0.
```

## Local → cloud → factory

1. **Local** — observe tool calls; hill-climb the skill.
2. **Cloud** — same skill on a cloud agent desktop.
3. **Factory** — webhook/Slack → agent → repro/fix/PR (**Benny** pattern: replicable idea; Cursor's Benny is internal).

## Writer ≠ verifier

After a fix, a **fresh** agent runs Drive + Evidence. The authoring session is biased.
