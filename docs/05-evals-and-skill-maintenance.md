# Evals and skill maintenance

Sources: Maven/YouTube transcript; pstack Eval Playbook (under Potato / poteto-mode); pstack guide.

## Skills come from failure modes

Build skills incrementally by watching agents fail:

- Confident wrong root cause
- Skipped reading the implicated code
- Guessing instead of searching
- Navigating the UI blindly without a feature map

Each repeated failure → a skill (or a CI rule if it is a code pattern).

## Evals ≈ unit tests for skills

Mental model from the workshop: an **eval** tests whether a skill change does what you think.

Rough recipe (as described):

1. Coordinator proposes a **rubric** for the skill.
2. Spawn subagents with agendas.
3. Name/frame tasks so subagents **do not know they are being evaluated** — agents change behavior when they know.
4. Optionally cross-model: judge with a different model to reduce bias.
5. Score; **hill-climb** (e.g. Cursor `/loop` until scores hit a bar).

pstack ships related playbooks (Eval Playbook under poteto-mode). Prefer upstream docs for exact steps.

## Maintaining verification skills

- Product changes constantly → feature maps rot.
- Use `/maintain-verification-skill` (pstack): update maps/skills **without** editing product code.
- Re-eval after meaningful skill edits.

## Taste and observation

Maintaining skills needs "backseat driver" taste: read tool calls and thinking blocks; do not be a passive observer while still early on the trust curve. Later you can be more hands-off once evals and CI hold the line.

## Local first for new verify skills

Start local so you can watch the agent drive the app. Move to cloud once the skill is trustworthy.
