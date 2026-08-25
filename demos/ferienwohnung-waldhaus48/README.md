# WALDHAUS 48° — Ferienwohnung Demo

This is the second Phase-2 implementation in `gpt_test` and the first hospitality demo.

## Goal

Build a Ferienwohnung / apartment website that feels like a small real hospitality brand instead of:

- a Booking.com clone
- a Lodgify template
- a beige AI luxury page
- a generic hotel landing page

The fictional brand is **WALDHAUS 48°**, a three-apartment direct-booking concept in the Nordschwarzwald.

## Why this concept was chosen

Three units give us enough flexibility to use licensed demo photography without pretending that several unrelated interiors are one exact real apartment. The visual system still remains coherent through natural materials, forest context, restrained color and consistent editorial treatment.

## Required reading before changing the design

Read completely:

1. `ART_DIRECTION.md`
2. `../../docs/ANTI_AI_DESIGN_RULES.md`
3. `../../docs/MASTER_BUILD_PROCESS.md`
4. `../../docs/IMAGE_LICENSING.md`
5. `../../reference-analysis/ferienwohnungen.md`

Do not redesign a section before stating:

1. what problem the change solves
2. which art-direction rule supports it
3. why the result will not introduce a generic AI/template pattern

## Run locally

First download the documented image assets.

### Windows

```powershell
cd demos\ferienwohnung-waldhaus48
powershell -ExecutionPolicy Bypass -File .\scripts\download-assets.ps1
```

### Linux/macOS

```bash
cd demos/ferienwohnung-waldhaus48
chmod +x ./scripts/download-assets.sh
./scripts/download-assets.sh
```

Then serve the directory, for example:

```bash
python -m http.server 8080
```

Open:

`http://localhost:8080`

Do not judge the design by opening `index.html` from a file URL if browser restrictions change script/font behavior.

## Files

- `index.html` — semantic page structure
- `styles.css` — complete responsive visual system
- `site-data.js` — easy-to-replace client/demo content
- `script.js` — rendering, mobile nav, FAQ, availability demo and reveal behavior
- `ART_DIRECTION.md` — frozen design direction
- `public/assets/ASSETS.md` — source/license manifest
- `scripts/download-assets.*` — downloads exact documented photography

## What is deliberately different from the Handwerk demo

The Handwerk site used project/process credibility as its core sales mechanic.

This hospitality demo instead uses:

- place as product
- photography as primary UI
- availability early in the journey
- practical travel information
- three differentiated unit narratives
- coordinate/elevation metadata as the single signature motif
- stronger seasonal storytelling

Do not reuse the KANTE & KERN layout language here.

## Booking integration seam

The current availability search is intentionally a **frontend demo**, not a fake live booking engine.

A production client can connect the form to:

- Smoobu
- Lodgify
- Beds24
- bookingkit
- another PMS / channel manager
- a custom API
- a simple external booking URL

The implementation must never claim live availability until such a provider is actually connected.

## Content swap model

Most business data lives in `site-data.js`.

A future client should be able to replace:

- brand name
- region
- contact data
- booking provider
- apartment names
- guests / size / rooms
- apartment descriptions
- local-guide entries
- FAQ data
- image files

without redesigning the page.

Some longer editorial demo copy remains in `index.html`; during client onboarding that should be replaced after interviewing the owner about the real property and area.

## Image policy

The page uses Pexels demo images only after documenting the individual source pages and reuse status in `public/assets/ASSETS.md`.

The images are **illustrative demo photography**. They must not be described as a real WALDHAUS 48° property because the brand itself is fictional.

For a paying customer, replace the hero and all apartment imagery with their own photography wherever possible.

## Quality checkpoints

### Desktop — 1440px+

Check:

- hero feels intentionally split, not like a template
- first image dominates without swallowing the booking path
- availability strip feels integrated
- apartment layouts are visibly different
- the green section creates rhythm rather than a random color block
- serif use remains selective

### Laptop — 1024–1280px

Check:

- navigation still breathes
- booking controls do not become cramped
- long display headlines wrap intentionally
- apartment metadata remains readable

### Mobile — 360–430px

Check:

- header/menu is easy to use
- hero headline does not create single-character lines
- date controls remain native and usable
- facts read as a useful ledger
- apartment images are not cropped into meaningless fragments
- FAQ targets remain comfortably tappable
- final CTA is clear without sticky-button spam

## Mandatory AI-tell audit

Before calling a revision finished, answer all of these:

1. Does beige + serif do most of the visual work? If yes, redesign.
2. Could this be a generic boutique hotel in another country? If yes, strengthen local specificity.
3. Are all apartments structurally identical? If yes, recompose.
4. Are there decorative amenity icons? Remove unless they solve a real scan problem.
5. Is any social proof invented? Remove it.
6. Does the booking element resemble a SaaS dashboard? Simplify it.
7. Does every section have the same spacing and hierarchy? Change the rhythm.
8. Is mobile merely stacked desktop? Redesign the sequence.

## Suggested Codex / ChatGPT continuation prompt

Use this exact framing when iterating:

> Work on `demos/ferienwohnung-waldhaus48` as a senior hospitality art director and frontend engineer. Read `ART_DIRECTION.md`, the repository anti-AI rules, the vacation-rental reference analysis, this README and the asset manifest before touching code. Preserve the core visual thesis: a quiet Black Forest field journal translated into a direct-booking website. Do not add generic cards, amenity icon grids, fake reviews, gradients, glass UI, decorative badges or luxury copy. Before each design change, state the UX/design problem, the art-direction principle being used, and the expected visual effect. Keep the booking path obvious and keep all demo claims clearly fictional or replaceable. Test desktop and mobile independently. After implementation, perform an AI-tell audit and list anything that still feels template-derived.

## Definition of done

The demo is ready for visual review when:

- all nine documented images are downloaded locally
- no broken image exists
- navigation works on mobile
- apartment data renders from `site-data.js`
- booking demo validates dates and explains the integration seam
- FAQ works with keyboard/buttons
- reduced-motion users are respected
- image/license manifest is complete
- no fake review, award or rating appears
- the page feels recognisably different from KANTE & KERN
