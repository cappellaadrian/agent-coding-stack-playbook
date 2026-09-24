# Hard guards vs soft rules (Dune as method)

Sources: Maven/YouTube transcript (Grokbot / **Dune** discussion). **Dune is not an open-source framework** — it is a collection of principles and internal architecture ideas. Encode the method; do not claim you installed "Dune."

## Layers of enforcement (strong → soft)

| Layer | Hardness | Examples |
|-------|----------|----------|
| Architecture / conventions in the tree | Strongest | Feature directories, entry-point nouns agents copy |
| Static analysis + CI | Hard fail | Import graph bans, lint bans, compiler |
| Rules / skills / Bugbot / style guides | Soft | Agents can forget or inconsistently apply |

Lauren's warning (paraphrased from transcript): if you only have soft rules and review comments, the codebase drifts to trash. Prefer **CI red** over another markdown admonition.

## Dune principles (method)

1. **Shortest path = best path** — Agents take shortcuts; make the shortcut correct.
2. **Feature colocation** — One feature ≈ one directory; less grep spelunking.
3. **Import graph CI** — e.g. renderer must not import main-process modules (Electron example from transcript).
4. **Ban fragile patterns in CI** — Transcript examples for their React/Electron world:
   - Ban **`useEffect`** (as a hard fail in their Grokbot/Dune setup)
   - Ban **code comments** as durable policy (agents leave stale / invented history in comments)
5. **Design for the naive agent** — Conventional nouns (feature, entry point, transcript card, …) so copy-paste patterns stay safe.
6. **Human code review as sole invariant = smell** — Convert repeated PR nits into lints / CI / categorical elimination.

These bans are **examples to adapt**, not universal laws for every stack. See `examples/ci/ban-patterns.EXAMPLE.yml`.

## Soft rules still matter

Keep AGENTS.md, Cursor rules, and skills — they steer models. Just do not rely on them alone.

## Brownfield vs greenfield (workshop framing)

- **Brownfield** with existing guardrails can already host agents safely; add more guards as needed.
- **Greenfield / vibe-coded** apps lack guardrails → agents optimize for shortcuts → organic architecture spiral. Invest early in hard constraints (Lauren described a large Grokbot refactor onto Dune-style architecture before trusting hands-off merges).

## What this playbook ships

- Soft: `AGENTS.md`, `.cursor/rules/*.mdc`
- Hard (examples only): `examples/ci/ban-patterns.EXAMPLE.yml`
- You must wire real CI in your product repo.
