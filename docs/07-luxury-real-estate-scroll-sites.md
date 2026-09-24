# Luxury real estate scroll sites (Claude Code)

Installable Claude Code content for a **cinematic, scroll-driven luxury real estate landing page**. Encoded from three Instagram reels Adrian shared. Complementary to Senior Engineer Mode and poteto / verify-app rules in this playbook.

> **Encode faithfully.** Attribute sources. Do **not** invent tutorial steps beyond caption overlays. Visual-only reels are references, not a claimed tech stack.

## Sources

| # | Reel | Account | Role |
|---|------|---------|------|
| 1 | https://www.instagram.com/reel/DbORBRzBCyJ/ | [@polanaeem.tech](https://www.instagram.com/polanaeem.tech/) | Visual / UX concept — **AURELIA** lifestyle scroll site; **no stack named** |
| 2 | https://www.instagram.com/reel/DOQpt79EZ55/ | [@web.design.trends](https://www.instagram.com/web.design.trends/) | Visual / trend concept by [@ayzz.thedesigner](https://www.instagram.com/ayzz.thedesigner/); live link [webtrend.online](https://webtrend.online); **no Claude install stack in caption** |
| 3 | https://www.instagram.com/reel/DYKqdP2MBG0/ | [@web.love.ed](https://www.instagram.com/web.love.ed/) | **PRIMARY** — caption tutorial names **GSAP + ScrollTrigger + Lenis**; Claude overlay (“Can you believe Claude did this?”) |

Local screenshot (reel 1, optional reference on Adrian’s agent box; **not** committed as a binary unless separately uploaded): AURELIA Residences MacBook frame with nav + STREET LEVEL / LEVEL 01.

## What each reel shows

### Reel 1 — AURELIA (@polanaeem.tech)

- Concept brand: **AURELIA** / **AURELIA RESIDENCES**
- Positioning: real estate as **selling the lifestyle**, not just the property
- Scroll-driven **level storytelling**: STREET LEVEL → LEVEL 01 / 08 / 34 / 63
- Nav (observed): Residences, Amenities, Architecture, Location, Gallery, **BOOK A VIEWING**
- Overlay / section cues: **PRIVATE ARRIVAL**, space callouts (e.g. m²), amenity tags (e.g. VALET)
- Immersive fullscreen architectural imagery; premium, minimal UI
- **Stack:** not named in the reel inventory → treat as **visual / UX reference only**

### Reel 2 — Homes / Loans / Agents / Tours (@web.design.trends)

- Concept credited to **@ayzz.thedesigner**
- Live demo link: **webtrend.online**
- Tagline cluster: **“Homes. Loans. Agents. Tours.”**
- Sample projects named: **PA9 Apartment**, **K Residence**, **512 Residential**, **Vivo Apartment**
- **Stack:** not named as a Claude Code recipe → **visual / IA reference only**

### Reel 3 — Claude Code cinematic RE (@web.love.ed) — PRIMARY

Caption tutorial (encode as-is; do not pad):

1. Create a cinematic luxury real estate experience
2. Use fullscreen hero sections + smooth scroll
3. Add layered visuals + parallax for depth
4. Keep typography minimal and premium
5. Use **GSAP + ScrollTrigger + Lenis**
6. Add fades, reveals, and image expansion on scroll
7. Include subtle hover + cursor interactions
8. Keep motion slow, smooth

UI overlays observed: Claude logo with **“Can you believe Claude did this?”**; site chrome **FIND / Real Estate / Sell / Rent / Newsletter**.

## Installable stack vs visual-only refs

| Artifact | Status |
|----------|--------|
| Build prompt (GSAP + ScrollTrigger + Lenis + AURELIA-style levels) | **Installable** — [`prompts/claude-luxury-real-estate-scroll-site.md`](../prompts/claude-luxury-real-estate-scroll-site.md) |
| Claude Code skill wrapper | **Installable** — [`.claude/skills/luxury-re-scroll-site/SKILL.md`](../.claude/skills/luxury-re-scroll-site/SKILL.md) |
| Product/UX spec (reels 1 + 3) | **Installable** — [`examples/luxury-re-aurelia-spec.md`](../examples/luxury-re-aurelia-spec.md) |
| Reel 1 AURELIA UI / level narrative | **Visual reference** — no stack claimed |
| Reel 2 webtrend.online / project grid | **Visual / IA reference** — no Claude stack claimed |
| Reel 3 caption steps + named libraries | **Installable tutorial spine** |

## Gaps (do not invent)

| Gap | Notes |
|-----|--------|
| Full reel audio transcripts / unlisted code dumps | Not available; encode caption + overlays only |
| Exact GSAP timelines, Lenis config, or file structure from creators | **Not published** in the shared reels — agent may choose a minimal modern stack (e.g. Vite + vanilla or Next) as long as the named libs and motion brief are met |
| Production photography / licensed 3D renders | Use **placeholders** (Unsplash / picsum / local stubs) unless the product supplies assets |
| Claim that reel 1 or 2 “uses Claude” or a specific stack | **Forbidden** — only reel 3 names Claude + GSAP/ScrollTrigger/Lenis |
| Pixel-perfect clone of AURELIA or webtrend.online | Out of scope; this playbook ships a **spec + prompt**, not scraped site code |

## How this fits the playbook

| Layer | Use for |
|-------|---------|
| **Luxury RE scroll prompt / skill** (this doc) | Greenfield cinematic landing with named motion stack |
| **Senior Engineer Mode** | Discover → plan → slice-build → secure → verify around that landing |
| **poteto / verify-app** | Finish conditions and real-app evidence once the site runs locally |

## How to use in Claude Code

1. Clone or open this playbook (or copy the prompt/skill into your product repo).
2. Optionally paste [`prompts/claude-senior-engineer-mode.md`](../prompts/claude-senior-engineer-mode.md) first.
3. Paste [`prompts/claude-luxury-real-estate-scroll-site.md`](../prompts/claude-luxury-real-estate-scroll-site.md) (or invoke skill **luxury-re-scroll-site**).
4. Point Claude at [`examples/luxury-re-aurelia-spec.md`](../examples/luxury-re-aurelia-spec.md) as the product brief.
5. Still follow root [`AGENTS.md`](../AGENTS.md) for verification when shipping beyond a demo.

## Related

- [`prompts/claude-luxury-real-estate-scroll-site.md`](../prompts/claude-luxury-real-estate-scroll-site.md)
- [`.claude/skills/luxury-re-scroll-site/SKILL.md`](../.claude/skills/luxury-re-scroll-site/SKILL.md)
- [`examples/luxury-re-aurelia-spec.md`](../examples/luxury-re-aurelia-spec.md)
- [`06-claude-opus-senior-engineer-mode.md`](./06-claude-opus-senior-engineer-mode.md)
- [`gaps.md`](./gaps.md)
