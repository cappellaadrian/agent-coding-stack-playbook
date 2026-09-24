# Poteto-mode prompts (attributed)

Attributed to Lauren Tan (@poteto) / **pstack** public materials (*How I Use Cursor*, pstack guide). Adapt; do not treat as a complete playbook catalog — see upstream:

- https://github.com/cursor/plugins/tree/main/pstack
- https://github.com/cursor/plugins/blob/main/pstack/docs/guide/README.md
- open-pstack: https://github.com/ericlitman/open-pstack

## Core idea

Give a **goal** and a **checkable outcome**. `/poteto-mode` (also discussed as potato / lauren-mode in community mirrors) routes to the right playbook. You do not need to name every skill.

## Minimal rigorous prompt

```text
/poteto-mode the export writes duplicate rows when a retry lands mid-run. repro first, then fix and verify.
```

(From the pstack guide's "if you only remember one thing" example.)

## With explicit finish condition

```text
/poteto-mode /goal
Bug: settings toggle does not persist after reload.
Finish when: toggle ON → restart app → toggle still ON; screenshot + doctor green.
Repro before fix. Fresh verify pass after the patch.
```

## Hill-climb with /loop

```text
/poteto-mode /loop
Improve the verify-app skill until Drive reliably opens Settings → Export
using the feature map. Do not edit product code. Stop when 3/3 cold runs succeed
with evidence artifacts.
```

Workshop framing: use `/loop` to hill-climb evals/skills toward a score bar.

## Parallel exploration with /swarm

```text
/poteto-mode /swarm
Propose 3 architectures for colocate-onboarding. Score by shortest-path-for-agents,
import-boundary clarity, and migrate cost. No product code until I pick a winner.
```

## Overnight (see also overnight-contract.md)

```text
/poteto-mode
Overnight contract: examples/overnight-contract.md
Work only tickets labeled ready-for-agent.
Each PR must include Evidence section artifacts.
No auto-merge. Stop on second flaky verify or unclear repro.
Write a decision log in ./agent-logs/overnight-YYYYMMDD.md
```

## Full Autopilot (caution)

Community/pstack materials refer to highly autonomous loops (sometimes "Full Autopilot"). Only enable when:

- Hard CI exists
- Verify skill is trustworthy
- Overnight contract + decision log are in place
- You accept token cost

Cursor-internal auto-merge of cloud PRs is **not** assumed. Stay on the trust curve.

## Claude Code note

With **open-pstack**, invoke the port's equivalent (e.g. poteto-mode / native skill names per their README) instead of Cursor-only slash commands when required.
