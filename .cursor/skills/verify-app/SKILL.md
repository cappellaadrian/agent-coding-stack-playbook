---
name: verify-app
description: TEMPLATE — Launch/Doctor/Drive/Evidence/Cleanup verification loop for YOUR app. Replace placeholders before relying on it.
---

# verify-app (template)

> **Placeholder skill.** Lauren's Control Glass skill is Cursor-internal. Use pstack `/create-verification-skill` to generate a real skill + feature map for your product, or fill every `TODO` below.

## When to use

- After implementing a fix or feature
- Before marking a PR merge-ready
- When a fresh verifier agent is spawned (writer ≠ verifier)

## Procedure

### 1. Launch

- `TODO`: command to start the real app (dev server, Electron binary, `flutter run`, etc.)
- `TODO`: required env files / feature flags
- Record app version / git SHA in the evidence log

### 2. Doctor

- Run `scripts/doctor.sh` (adapt to your stack) or inline health checks
- Fail fast on: missing deps, wrong node/java versions, dead ports, failed migrations
- Do not proceed to Drive if Doctor is red

### 3. Drive

- Open the feature map index: `features/README.md`
- Navigate using mapped paths / shortcuts / selectors
- Exercise the **finish condition** from the task prompt
- Prefer deterministic scripts (CDP, Playwright, simctl) over vague "looks fine"

### 4. Evidence

Capture at least one of:

- Screenshot or video of the success path
- Relevant logs / console errors (or proof of absence)
- Performance trace / heap snapshot when the bug is perf-related
- Before/after if this is a fix

Store paths in the PR Evidence section. Do not claim success without artifacts.

### 5. Cleanup

- Stop processes you started
- Release ports / temp profiles / simulators
- Leave the machine how you found it (especially cloud agents)

## Anti-patterns

- Stopping at `tsc --noEmit` / green unit tests only
- Editing product code inside `/maintain-verification-skill` flows
- Verifying in the same saturated context that wrote the buggy fix without a fresh pass

## Maintenance

- Update feature maps when UI IA changes
- Prefer pstack `/maintain-verification-skill` for map/skill edits
- Add evals when this skill mis-navigates (see `docs/05-evals-and-skill-maintenance.md`)
