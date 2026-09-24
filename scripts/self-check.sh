#!/usr/bin/env bash
# self-check.sh — ensure this playbook tree is complete.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

required=(
  README.md
  AGENTS.md
  CLAUDE.md
  docs/00-sources.md
  docs/01-trust-curve.md
  docs/02-verification-and-feature-maps.md
  docs/03-hard-guards-vs-soft-rules.md
  docs/04-pr-and-shipping.md
  docs/05-evals-and-skill-maintenance.md
  docs/gaps.md
  .cursor/rules/00-core.mdc
  .cursor/rules/architecture.mdc
  .cursor/rules/verification.mdc
  .cursor/skills/verify-app/SKILL.md
  .cursor/skills/verify-app/features/README.md
  .claude/CLAUDE.md
  scripts/self-check.sh
  scripts/doctor.sh
  .github/PULL_REQUEST_TEMPLATE.md
  .github/CHECKLIST.md
  examples/poteto-mode-prompts.md
  examples/overnight-contract.md
  examples/ci/ban-patterns.EXAMPLE.yml
)

missing=0
for f in "${required[@]}"; do
  if [[ ! -e "$f" ]]; then
    echo "MISSING $f"
    missing=$((missing + 1))
  else
    echo "OK $f"
  fi
done

if [[ "$missing" -gt 0 ]]; then
  echo "self-check failed: $missing missing path(s)"
  exit 1
fi

echo "self-check passed: ${#required[@]} paths present"
