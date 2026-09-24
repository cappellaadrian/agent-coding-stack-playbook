## Summary

<!-- What changed and why (atomic: one concern per PR) -->

## Finish condition

<!-- Observable user/agent-visible outcome agreed up front -->

## Evidence (mandatory)

> Compiles / unit tests alone are not enough. Attach real-app verification.

- [ ] Repro recorded **before** fix (or N/A for pure chore — explain)
- [ ] Verify skill run: Launch → Doctor → Drive → Evidence → Cleanup
- [ ] Artifacts linked or attached (screenshots, traces, logs, script output)
- [ ] Fresh verifier session used (writer ≠ verifier), or justified waiver

**Artifact links / paths:**

```
<!-- e.g. ./artifacts/export-success.png, CI job URL, trace.json -->
```

**Doctor output (paste or link):**

```
```

## Hard guards

- [ ] CI green (including any ban-pattern / import-boundary checks)
- [ ] No new soft-only policy that should be a lint

## Risk / rollback

<!-- How to revert; feature flag? -->

## Checklist

See [.github/CHECKLIST.md](./CHECKLIST.md).
