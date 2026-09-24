# PRs and shipping

Sources: Maven/YouTube transcript; pstack guide (verify then focused PR); this repo's `.github/` templates.

## Atomic splits

- Encourage agents to split work into **multiple PRs**, each atomically describing one change.
- Git history is a rich context source for future agents.
- Easier bisect / revert than a giant mixed PR.
- No universal hard LOC cap in the talk; sizes vary (tens to hundreds/thousands of lines depending on task). Prefer clarity over arbitrary caps.

## Babysit → merge-ready

Human (or coordinator agent) babysitting should stop when the PR is **merge-ready**:

- CI green (hard guards)
- Evidence attached (verify skill output)
- Scope matches the ticket / finish condition

Not when the author agent merely claims success.

## Fresh agent verifies

- **Writer ≠ verifier**
- Spawn a new session / subagent to run Launch → Doctor → Drive → Evidence → Cleanup
- Compare against the ticket and finish condition

## PR template

Use `.github/PULL_REQUEST_TEMPLATE.md` — mandatory **Evidence** section. Reject or request changes on PRs that only say "tested locally" with no artifact.

## Checklist

See `.github/CHECKLIST.md` for pre-merge human/agent shared list.

## Cloud / overnight shipping

- Overnight contracts: `examples/overnight-contract.md`
- Auto-merge is optional and org-specific; Cursor's internal auto-merge is **not** documented here as a turnkey feature.
- Decision logs for unattended runs (pstack guide theme): what was tried, what evidence exists, what was deferred.
