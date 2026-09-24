# Overnight contract (template)

Use when leaving agents unattended (local `/loop` or cloud). Inspired by pstack guide themes (overnight contract, decision log, playbooks that scale past one agent) and Lauren's trust-curve caution: do not skip verification maturity.

## Scope

- **Allowed tickets / paths:** `TODO`
- **Forbidden paths:** `TODO` (secrets, prod config, irreversible migrations)
- **Max PRs / max token budget:** `TODO`

## Required per change

1. Repro (or explicit N/A) before edit
2. Atomic PR
3. Verify skill: Launch → Doctor → Drive → Evidence → Cleanup
4. Evidence uploaded on the PR
5. Writer ≠ verifier (second session)

## Stop conditions (halt and page a human)

- Repro fails twice inconsistently (flaky)
- Doctor red for environment reasons you cannot fix safely
- CI ban-pattern failures that need policy decisions
- Scope creep beyond the ticket
- Suspicion of credential / data exfil paths

## Merge policy

- [ ] **No auto-merge** (default for most teams)
- [ ] Auto-merge only if: `TODO` (branch protection + required checks + evidence bot)

Cursor-internal overnight auto-merge is **not** provided by this playbook.

## Decision log

Path: `./agent-logs/overnight-YYYYMMDD.md`

Each entry:

| Time | Ticket | Action | Evidence | Result | Next |
|------|--------|--------|----------|--------|------|
| | | | | | |

## Morning review

- Read decision log before touching code
- Spot-check one merged or merge-ready PR end-to-end
- Convert any new failure mode into a skill or CI rule
