# KANTE & KERN — Handwerk Demo

First concrete Phase-2 implementation for the `gpt_test` challenge.

This is a **fictional German Schreinerei / Innenausbau business**. It is intentionally built as an authored, image-led regional craft website rather than a generic AI-generated Handwerker template.

## Current status

Implemented:

- fictional brand and positioning
- full art direction
- curated real-photo set from Pexels
- source/license manifest for every selected image
- desktop homepage
- mobile-specific layout
- responsive navigation
- restrained reveal motion
- reduced-motion support
- accessible labels / skip link / focus states
- demo-only contact form that does not transmit data
- no fake reviews, awards, employee names, project counts or years in business
- Linux and Windows asset download scripts

Not yet considered final:

- visual browser QA on several real devices
- locally compressed WebP/AVIF derivatives
- Lighthouse measurement
- final font self-hosting
- production form backend
- legal pages for a real customer
- real customer copy / projects / credentials

---

## Read this first

1. `ART_DIRECTION.md`
2. `public/assets/ASSETS.md`
3. `../../docs/ANTI_AI_DESIGN_RULES.md`
4. `../../reference-analysis/handwerk.md`

The implementation should be judged against those files, not against the vague criterion `looks modern`.

---

## Download the real images

Binary images are not committed by the connected text-file workflow that created this phase. The exact licensed sources are documented and can be downloaded automatically.

### Windows / PowerShell

From this directory:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\download-assets.ps1
```

### Linux / macOS

```bash
chmod +x ./scripts/download-assets.sh
./scripts/download-assets.sh
```

The files will be placed in:

```text
public/assets/images/
```

Do not publish the finished demo before reading `public/assets/ASSETS.md` and reviewing third-party rights noted there.

---

## Run locally

This version deliberately has **no npm dependency**.

After downloading assets, serve the directory with any local static server.

Python example:

```bash
python -m http.server 8080
```

Then open:

```text
http://localhost:8080
```

Opening `index.html` directly may also work, but a local HTTP server is preferred.

---

# Design decisions

## Why a Schreinerei?

A carpenter/interior-work business is a useful test for the original challenge because generic AI defaults fail quickly here. The site needs visual taste, real material photography, useful local information and believable craft language at the same time.

## Why `KANTE & KERN`?

The fictional name gives us two material concepts:

- edge / finish / precision
- core / material / substance

That is stronger than an abstract agency-style name and gives the copy something specific to build around.

## Why no rating row?

Because there is no real company behind the demo. Fake `4.9 ★ / 127 Bewertungen`, `25 Jahre Erfahrung` or `500 Projekte` would make the page look more complete at the cost of credibility.

## Why no icons?

The services are understandable without pictograms. A saw, ruler, kitchen or stair icon would mostly fill space and push the design toward a template aesthetic.

## Why rough workshop photography next to polished interiors?

This is intentional. The finished project images prove spatial quality; the rough workshop imagery makes the site feel like an actual craft business rather than an interior-design moodboard.

---

# Homepage structure

```text
Navigation
↓
Hero
↓
Service / region proof strip
↓
Flagship project
↓
Four-service editorial list
↓
Four-step process
↓
Asymmetric selected-work composition
↓
Material / measurement signature section
↓
Workshop section
↓
Region
↓
Project enquiry
↓
Restrained footer
```

There is deliberately no:

```text
Hero → three cards → logo row → three cards → testimonials → FAQ → giant CTA
```

---

# Five-second test

A first-time visitor should understand almost immediately:

1. this is a Schreinerei / Innenausbau company
2. it works in the Nordschwarzwald region
3. it focuses on custom interior work rather than cheap flat-pack furniture
4. the work is visually high quality
5. the next action is `Projekt anfragen`

If one of these fails during visual QA, fix hierarchy before adding more features.

---

# Anti-AI review checklist

Before calling the page done, verify:

- [ ] no gradient backgrounds
- [ ] no glass cards
- [ ] no generic three-card `Warum wir` section
- [ ] no meaningless iconography
- [ ] no fake numbers
- [ ] no fake reviews
- [ ] no fake staff identities
- [ ] no identical section rhythm throughout
- [ ] no repeated image ratio everywhere
- [ ] no generic `Qualität / Leidenschaft / Innovation` copy
- [ ] no SaaS-style two-button hero
- [ ] mobile hero is deliberately recomposed
- [ ] form fields remain easy to use on mobile
- [ ] visible focus states exist
- [ ] reduced-motion preference is respected
- [ ] photos remain licensed/documented

---

# Client conversion plan

A real carpenter should be able to retain most of the design and replace these layers:

## 1. Brand

Replace:

- `KANTE & KERN`
- wordmark typography if needed
- colors only where the real brand requires it

Do not automatically rebuild the entire visual system around a client's logo color.

## 2. Photography

Replace the eight demo assets with:

- actual workshop
- actual team where permission exists
- actual project photography
- real material / detail shots

Keep the same image-role logic rather than forcing every client photo into the same crop.

## 3. Claims

Add only real:

- years in business
- Meisterbetrieb status
- guild memberships
- warranties
- ratings
- partner brands
- certifications

## 4. Service area

Replace the fictional demo region wording with the actual service radius and whether larger projects are accepted outside it.

## 5. Form

Connect to:

- e-mail
- CRM
- lead system
- optional file/image upload

Later versions can add project budget and timeframe where commercially useful.

---

# Prompt for ChatGPT / Codex when modifying this demo

Use this instruction before making large design changes:

```text
You are modifying the KANTE & KERN Handwerk demo.

Before changing implementation, read completely:
- demos/handwerk-kante-kern/ART_DIRECTION.md
- demos/handwerk-kante-kern/public/assets/ASSETS.md
- docs/ANTI_AI_DESIGN_RULES.md
- reference-analysis/handwerk.md

The goal is not to make the site more feature-rich or more conventionally modern.
The goal is to preserve an authored German regional craft identity.

Hard constraints:
- no gradients
- no glassmorphism
- no generic feature-card grids
- no fake statistics/reviews/awards
- no decorative icon soup
- no AI marketing clichés
- project photography remains structural
- the single visual motif remains section/project numbering
- use at most two font families
- mobile must be deliberately composed
- preserve accessible focus, form labels and reduced-motion behavior

Before writing code, state:
1. what problem the proposed change solves
2. which art-direction principle supports it
3. why it does not introduce a generic AI/template pattern

Then make the smallest coherent implementation change.
```

---

# Next checkpoint

The next step should be **visual QA, not more sections**.

Check at minimum:

- 1440×900 desktop
- 1280×800 laptop
- 1024px tablet
- 390×844 phone
- 360×800 small phone

Then record concrete findings in a `QA.md` file before changing the design.
