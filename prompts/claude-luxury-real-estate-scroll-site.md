# Claude Code — luxury real estate scroll site (paste-ready)

> Encoded from Instagram reels Adrian shared:  
> - **PRIMARY tutorial / stack:** https://www.instagram.com/reel/DYKqdP2MBG0/ ([@web.love.ed](https://www.instagram.com/web.love.ed/)) — GSAP + ScrollTrigger + Lenis; caption steps below  
> - **AURELIA UX / levels:** https://www.instagram.com/reel/DbORBRzBCyJ/ ([@polanaeem.tech](https://www.instagram.com/polanaeem.tech/)) — lifestyle scroll; STREET LEVEL → LEVEL 01/08/34/63; premium nav/CTAs (**visual only**, no stack named)  
> - **Secondary visual / IA:** https://www.instagram.com/reel/DOQpt79EZ55/ ([@web.design.trends](https://www.instagram.com/web.design.trends/); concept [@ayzz.thedesigner](https://www.instagram.com/ayzz.thedesigner/); [webtrend.online](https://webtrend.online)) — “Homes. Loans. Agents. Tours.”; sample projects (**visual only**)  
>
> Do **not** invent tutorial steps beyond the reel 3 caption overlays. Placeholder images are OK. See `docs/07-luxury-real-estate-scroll-sites.md` and `examples/luxury-re-aurelia-spec.md`.

## How to use

1. Optionally paste `prompts/claude-senior-engineer-mode.md` first (if present in this repo).
2. Copy everything inside the single fenced block below into Claude Code.
3. Append brand name, city, and any real assets (or keep placeholders).
4. Run the local preview Claude starts; iterate on motion feel (slow, smooth) before polish.

---

```text
# Build: cinematic luxury real estate scroll experience

You are building a **cinematic luxury real estate landing page** in this workspace.

## Process

If `prompts/claude-senior-engineer-mode.md` (Senior Engineer Mode) exists in this repo or the parent playbook, **follow it**: discover → plan → small working slices → quality/security → verify. If it is not available, still plan briefly, then build in slices.

Obey any root `AGENTS.md` / verify skill for finish conditions when shipping beyond a demo.

## Sources to honor (do not over-claim)

- Stack + motion brief from [@web.love.ed](https://www.instagram.com/web.love.ed/) reel: https://www.instagram.com/reel/DYKqdP2MBG0/
- Level storytelling + premium nav/CTAs inspired by AURELIA concept ([@polanaeem.tech](https://www.instagram.com/polanaeem.tech/)): https://www.instagram.com/reel/DbORBRzBCyJ/
- Optional IA cues from [@web.design.trends](https://www.instagram.com/web.design.trends/) / [@ayzz.thedesigner](https://www.instagram.com/ayzz.thedesigner/): https://www.instagram.com/reel/DOQpt79EZ55/ — “Homes. Loans. Agents. Tours.”; project names only as secondary inspiration
- Product/UX checklist: `examples/luxury-re-aurelia-spec.md` if present

Do **not** scrape or copy proprietary site code. Do **not** invent tutorial steps beyond the caption list below.

## Caption tutorial (reel 3 — follow exactly)

1. Create a cinematic luxury real estate experience
2. Use fullscreen hero sections + smooth scroll
3. Add layered visuals + parallax for depth
4. Keep typography minimal and premium
5. Use **GSAP + ScrollTrigger + Lenis**
6. Add fades, reveals, and image expansion on scroll
7. Include subtle hover + cursor interactions
8. Keep motion **slow** and **smooth**

## Must-have UX (AURELIA-style + reel 3 chrome)

- Brand: use **AURELIA RESIDENCES** as the default demo brand (or substitute the name I paste below).
- Sell **lifestyle**, not a property grid dump.
- Fullscreen heroes; immersive architectural imagery (placeholders OK).
- Scroll-driven **level storytelling** with labels: **STREET LEVEL**, **LEVEL 01**, **LEVEL 08**, **LEVEL 34**, **LEVEL 63** (progress / chapter feel as the user scrolls).
- Top nav: Residences, Amenities, Architecture, Location, Gallery, plus CTA **BOOK A VIEWING**.
- At least one premium arrival / amenity beat such as **PRIVATE ARRIVAL** (and optional light callouts like space m² or VALET — keep minimal).
- Secondary chrome inspired by reel 3 overlays is welcome: FIND / Real Estate / Sell / Rent / Newsletter — only if it fits without cluttering the AURELIA hero narrative.
- Typography: minimal, premium, generous whitespace.
- Motion: slow GSAP fades/reveals, parallax layers, image expansion on scroll; subtle hover + custom cursor interactions via Lenis-smooth scrolling context.

## Tech constraints

- **Required libraries:** GSAP, ScrollTrigger, Lenis (wire ScrollTrigger to the Lenis scroll if you integrate both).
- Prefer a small modern scaffold (Vite + vanilla TS/JS, or Next/React if the repo already uses it). Minimal deps beyond the three named above + whatever the scaffold needs.
- Placeholder images are OK (e.g. picsum / Unsplash URLs or local stubs). Mark them clearly so real assets can replace them later.
- Responsive: desktop-first cinematic layout; do not break mobile readability.
- No hard-coded secrets; no fake “book viewing” backend — a mailto: or `#` CTA with a clear TODO comment is enough unless I provide an API.
- Accessible enough: respect `prefers-reduced-motion` (reduce or disable parallax/expansions when set).

## Delivery

1. Summarize understanding + riskiest assumptions; propose a short file plan; then build.
2. Implement a runnable preview (`npm install && npm run dev` or equivalent).
3. When “done,” tell me the exact commands to run and what I should see while scrolling (levels, nav, CTAs, motion beats).

## My inputs (optional — paste below)

Brand / project name: [default AURELIA RESIDENCES]
City / location line: [optional]
Real image URLs or “use placeholders”: [optional]
Extra sections: [optional]

Finish condition:
A local preview of a cinematic luxury RE landing with Lenis smooth scroll, GSAP ScrollTrigger fades/reveals/image expansion, AURELIA-style level labels and premium nav/BOOK A VIEWING CTA, typography minimal/premium, motion slow/smooth.
```
