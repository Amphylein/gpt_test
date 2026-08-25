# HALBTON — Hair & Colour Studio

Phase-2 demo for the Friseur / Kosmetik category.

## Status

- art direction: complete
- homepage implementation: complete
- responsive behavior: implemented
- booking demo interaction: implemented
- legal asset manifest: complete
- Windows/Linux asset download scripts: complete
- browser/device QA: still required

## Purpose

This demo tests whether ChatGPT/Codex can build a salon website that feels genuinely art-directed rather than like a beige/pink beauty template.

HALBTON is deliberately different from the other demos:

- `KANTE & KERN` = architectural craft/editorial
- `WALDHAUS 48°` = quiet travel/hospitality
- `HALBTON` = sharp fashion/editorial + functional service index

## Fictional demo identity

**HALBTON — Hair & Colour Studio**

Demo location: Freudenstadt / Nordschwarzwald.

The brand, staff names, prices, phone number and contact data are fictional demo content. Do not deploy them as a real business identity.

Before any real commercial use, check:

- business-name collisions
- domain availability
- trademark conflicts

## Core idea

> Farbe beginnt nicht beim Wunschton. Sondern bei Ausgangsbasis, Kontrast und Alltag.

The website is positioned around technical colour judgment and wearable cuts instead of generic beauty/luxury language.

## Files

- `ART_DIRECTION.md` — visual and brand rules
- `site-data.js` — client-swappable demo content
- `index.html` — page structure
- `styles.css` — complete responsive art direction
- `script.js` — navigation, service-image switch, booking dialog, reveals
- `public/assets/ASSETS.md` — exact image source/license manifest
- `scripts/download-assets.ps1` — Windows downloader
- `scripts/download-assets.sh` — Linux/macOS downloader

## Download images

### Windows

```powershell
cd demos\friseur-halbton
powershell -ExecutionPolicy Bypass -File .\scripts\download-assets.ps1
```

### Linux / macOS

```bash
cd demos/friseur-halbton
chmod +x ./scripts/download-assets.sh
./scripts/download-assets.sh
```

## Run locally

From the demo directory:

```bash
python -m http.server 8080
```

Then open:

`http://localhost:8080`

## Why the image strategy is different

The demo intentionally does **not** use stock portraits as fake staff members.

Most service/process imagery is from related cottonbro salon shoots. The people shown are treated purely as editorial/process subjects.

The team section is typography-first until a real client supplies real staff portraits.

This is a conscious trust decision, not a missing feature.

## Design system summary

### Thesis

Fashion-editorial typography + working salon mechanics.

### Palette

- warm paper
- near-black ink
- oxblood accent
- utility grey

### Signature motif

Editorial crop / registration marks around selected image frames.

### Shape language

- square images
- hard rules
- virtually no rounded containers
- no floating cards
- no shadows as decoration

### Typography

- `Cormorant Garamond` only for selected display/italic moments
- `Archivo` for functional content, navigation, prices and body copy

## Homepage architecture

1. sticky graphic header
2. asymmetric editorial hero
3. point-of-view statement
4. service / price index
5. image interruption
6. Color Lab consultation logic
7. team architecture without fake portraits
8. price index
9. studio/interior moment
10. opening hours/contact
11. photographic booking ending

## Booking integration

The current dialog is explicitly a front-end demo.

For a real client, replace the simulated submit behavior in `script.js` with the customer's existing provider, for example:

- Fresha
- Phorest
- Treatwell / external booking path
- custom booking form/API

Do not build a replacement booking backend unless the project requires it.

## Client swap checklist

For a real salon:

1. replace HALBTON name/logo
2. replace Freudenstadt location
3. replace every photo with actual salon/work/team imagery where available
4. replace fictional staff data
5. replace prices and service taxonomy
6. connect real booking provider
7. replace hours/contact details
8. add real address/map behavior
9. add real legal pages
10. audit accessibility/performance after final imagery

## Mandatory AI-tell audit

Before accepting any later redesign, verify:

- [ ] no pink/purple gradient
- [ ] no gold-on-black pseudo luxury
- [ ] no 3-card services row
- [ ] no stock portrait presented as staff
- [ ] no generic “beauty / passion / luxury” copy
- [ ] prices remain easy to scan
- [ ] booking remains visible
- [ ] page is not made softer just because the client is a salon
- [ ] typography still has graphic tension
- [ ] mobile is intentionally composed

## Prompt for future ChatGPT / Codex work

Use this before making substantial changes:

```text
You are modifying the HALBTON Hair & Colour Studio demo.

Before touching code, read completely:

1. ../../docs/ANTI_AI_DESIGN_RULES.md
2. ../../docs/MASTER_BUILD_PROCESS.md
3. ../../docs/IMAGE_LICENSING.md
4. ../../reference-analysis/friseur-kosmetik.md
5. ./ART_DIRECTION.md
6. ./README.md
7. ./public/assets/ASSETS.md

Then inspect the existing index.html, styles.css, site-data.js and script.js.

Do NOT redesign the site by applying generic best practices blindly.

The fixed art direction is:
"Fashion-editorial typography meets the honest mechanics of a working salon: sharp, tactile, warm and precise — never pink, spa-like or pseudo-luxury."

Before every major visual modification, state in your work notes:

1. What exact problem is being solved?
2. Which existing art-direction rule supports the change?
3. Why does the change avoid a generic AI/template pattern?

Hard constraints:

- no gradients
- no glassmorphism
- no generic service cards
- no icon-circle feature grid
- no fake ratings or awards
- no stock person presented as employee
- no fake business proof
- no generic salon slogans
- do not hide pricing
- do not replace sharp graphic structure with a generic beige luxury aesthetic
- use the oxblood accent intentionally, not everywhere
- preserve the crop-mark editorial motif as the one recurring signature device
- keep booking obvious on mobile

If new photography is introduced:

- verify reuse rights on the individual source page
- add the exact source/license data to public/assets/ASSETS.md
- never copy photos from reference salons
- never imply that a stock person endorses the fictional or client business

After changes, run an AI-tell audit and explicitly reject any section that now looks like a purchased salon template.
```

## Next QA step

Do not add more sections yet.

The next meaningful step is visual browser QA at approximately:

- 1440 desktop
- 1280 laptop
- 768 tablet
- 390 mobile

Evaluate hierarchy, headline wrapping, image crops, price scanning, booking visibility and whether any section still feels AI-generated.
