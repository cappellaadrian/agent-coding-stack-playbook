# AURELIA-style luxury RE scroll site — product / UX spec

Faithful composite from **reel 1** (AURELIA visual/UX) + **reel 3** (Claude Code caption tutorial). Secondary IA cues from **reel 2** are optional only.

> Not a pixel-perfect clone. Not scraped code. Placeholder imagery is acceptable.

## Attribution

| Reel | URL | Use in this spec |
|------|-----|------------------|
| 1 | https://www.instagram.com/reel/DbORBRzBCyJ/ (@polanaeem.tech) | Brand, levels, nav, lifestyle positioning, PRIVATE ARRIVAL |
| 3 | https://www.instagram.com/reel/DYKqdP2MBG0/ (@web.love.ed) | Motion principles + **GSAP + ScrollTrigger + Lenis** |
| 2 (optional) | https://www.instagram.com/reel/DOQpt79EZ55/ (@web.design.trends; concept @ayzz.thedesigner; webtrend.online) | Tagline “Homes. Loans. Agents. Tours.”; sample project names as secondary inspiration |

## Positioning

- Product type: **marketing / experience** landing for a luxury residence brand
- Default demo brand: **AURELIA RESIDENCES**
- Message: sell the **lifestyle above** the property — cinematic, not a spreadsheet of listings

## Information architecture

### Primary navigation

- Residences
- Amenities
- Architecture
- Location
- Gallery
- CTA: **BOOK A VIEWING**

### Scroll chapters (level storytelling)

Present as scroll progress / chapter labels (exact UI chrome flexible):

1. STREET LEVEL
2. LEVEL 01
3. LEVEL 08
4. LEVEL 34
5. LEVEL 63

### Signature beats (from reel 1)

- Immersive exterior ↔ interior transitions
- **PRIVATE ARRIVAL** (premium lobby / arrival moment)
- Sparse data callouts only when elegant (e.g. space m², VALET) — do not clutter

### Optional chrome (from reel 3 overlays)

If it does not fight the AURELIA narrative, secondary items may appear:

- FIND
- Real Estate
- Sell
- Rent
- Newsletter

### Optional secondary IA (from reel 2 — not required)

- Cluster: Homes / Loans / Agents / Tours
- Example project labels: PA9 Apartment, K Residence, 512 Residential, Vivo Apartment

## Visual design

- Fullscreen hero sections
- Layered visuals; depth via parallax
- Typography: **minimal and premium**
- High-quality architectural stills or renders (**placeholders OK**)
- Desktop cinematic first; keep mobile readable

## Motion design (reel 3 caption only — do not invent extra tricks)

| Requirement | Detail |
|-------------|--------|
| Smooth scroll | **Lenis** |
| Scroll animation | **GSAP + ScrollTrigger** |
| Effects named in caption | Fades, reveals, image expansion on scroll |
| Interaction | Subtle hover + cursor interactions |
| Tempo | **Slow, smooth** — never frantic |
| A11y | Honor `prefers-reduced-motion` |

## Non-goals

- Full MLS / search backend
- Auth, payments, CRM
- Claiming a tech stack for reels that did not name one
- Shipping licensed photography without assets from the product owner

## Acceptance checklist

- [ ] Runnable local preview
- [ ] Lenis smooth scroll active
- [ ] GSAP ScrollTrigger drives fades / reveals / at least one image expansion
- [ ] Level labels STREET LEVEL → 01 / 08 / 34 / 63 appear in the scroll narrative
- [ ] Nav includes Residences, Amenities, Architecture, Location, Gallery + BOOK A VIEWING
- [ ] PRIVATE ARRIVAL (or equivalent premium beat) present
- [ ] Typography feels minimal/premium; motion feels slow/smooth
- [ ] Placeholder images clearly swappable
- [ ] `prefers-reduced-motion` considered

## Related playbook files

- `docs/07-luxury-real-estate-scroll-sites.md`
- `prompts/claude-luxury-real-estate-scroll-site.md`
- `.claude/skills/luxury-re-scroll-site/SKILL.md`
