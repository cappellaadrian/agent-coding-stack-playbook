---
name: luxury-re-scroll-site
description: Build a cinematic luxury real estate scroll landing with GSAP + ScrollTrigger + Lenis (AURELIA-style levels, premium nav/CTAs). Use when the user wants a scroll-driven RE experience from the IG reel playbook content.
---

# Luxury RE scroll site

> Encoded from IG reels: primary stack/tutorial [@web.love.ed](https://www.instagram.com/web.love.ed/) https://www.instagram.com/reel/DYKqdP2MBG0/; AURELIA UX [@polanaeem.tech](https://www.instagram.com/polanaeem.tech/) https://www.instagram.com/reel/DbORBRzBCyJ/; visual IA [@web.design.trends](https://www.instagram.com/web.design.trends/) https://www.instagram.com/reel/DOQpt79EZ55/. Notes: `docs/07-luxury-real-estate-scroll-sites.md`. Paste-ready body: `prompts/claude-luxury-real-estate-scroll-site.md`. Spec: `examples/luxury-re-aurelia-spec.md`.

## When to use

- User wants a cinematic / scroll-driven luxury real estate landing page
- Request mentions AURELIA, GSAP, ScrollTrigger, Lenis, or the shared IG reels
- Greenfield demo or marketing site where motion + lifestyle storytelling matter more than a CRUD MLS grid

## When not to use (alone)

- Full MLS search, auth, payments, or CMS → need product architecture beyond this landing prompt
- Pure verification / merge-ready checks → **verify-app** / poteto finish-condition flow
- Do **not** claim reel 1 or 2 named a stack; do **not** invent tutorial steps beyond reel 3’s caption list

## Procedure

1. Optionally load **senior-engineer-mode** / `prompts/claude-senior-engineer-mode.md` first.
2. Load and follow `prompts/claude-luxury-real-estate-scroll-site.md`.
3. Use `examples/luxury-re-aurelia-spec.md` as the product/UX checklist (reels 1 + 3).
4. Implement with **GSAP + ScrollTrigger + Lenis**; placeholder images OK; respect `prefers-reduced-motion`.
5. Deliver a runnable local preview and describe scroll beats (levels, reveals, CTAs).
6. Obey product `AGENTS.md` when shipping beyond a demo.

## Anti-patterns

- Inventing caption steps or a stack for reels that did not name one
- Pixel-cloning webtrend.online / AURELIA by scraping
- Fast, bouncy, or cluttered motion (caption says slow and smooth)
- Claiming “done” with no runnable preview
