#!/usr/bin/env bash
# doctor.sh — adapt to your application health checks.
# Exit 0 = healthy enough to Drive; non-zero = stop and report.
set -euo pipefail

echo "== verify-app doctor (template) =="
echo "TODO: replace checks with real probes for your app."

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

failures=0

check() {
  local name="$1"
  shift
  if "$@"; then
    echo "OK  $name"
  else
    echo "FAIL $name"
    failures=$((failures + 1))
  fi
}

# Examples — enable what applies:
# check "node present" command -v node
# check "pkg manager lockfile" test -f package-lock.json -o -f pnpm-lock.yaml -o -f yarn.lock
# check "env file" test -f .env.example
# check "unit smoke" npm test -- --run path/to/smoke.test.ts

check "playbook AGENTS.md present" test -f AGENTS.md
check "verify skill present" test -f .cursor/skills/verify-app/SKILL.md

if [[ "$failures" -gt 0 ]]; then
  echo "Doctor found $failures failure(s)."
  exit 1
fi

echo "Doctor passed (template checks only)."
exit 0
