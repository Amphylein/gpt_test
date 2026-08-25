# ART DIRECTION — HALBTON

Status: Phase 2 demo
Category: Friseur / Hair & Colour Studio
Demo brand: **HALBTON — Hair & Colour Studio**
Demo region: **Freudenstadt / Nordschwarzwald**

> Important: HALBTON is a fictional demo identity. Before any real commercial use, name/domain/trademark availability must be checked.

## Visual thesis

**Fashion-editorial typography meets the honest mechanics of a working salon: sharp, tactile, warm and precise — never pink, spa-like or pseudo-luxury.**

The site should feel closer to an independent fashion magazine / art-directed lookbook than to a salon template, while keeping services, prices and booking extremely easy to understand.

## Business point of view

HALBTON is not positioned as “everything beauty”. It is a focused contemporary hair studio built around:

1. Cut & texture
2. Colour & balayage
3. Care & gloss
4. Styling / brows as a small secondary layer

The core belief is:

> **Farbe beginnt nicht beim Wunschton. Sondern bei Ausgangsbasis, Kontrast und Alltag.**

That is specific enough that another salon could disagree with it, and therefore stronger than generic quality claims.

## Target audience

- roughly 23–48
- design-aware but not necessarily luxury clientele
- willing to pay for consultation and colour expertise
- values natural / wearable results over trend-chasing
- expects online booking and visible pricing guidance

## Brand language

German, short and confident.

Allowed:

- direct statements
- professional terminology where useful
- a little attitude
- clear price and consultation logic

Avoid:

- “Deine Schönheit. Unsere Leidenschaft.”
- “Luxus für deine Sinne.”
- “Perfektion trifft Individualität.”
- “Erlebe den Unterschied.”
- fake empowerment copy
- excessive English beauty jargon

## Palette

Photography should carry skin / hair / salon tones. UI remains graphic.

- paper: `#F2EFE8`
- ink: `#171716`
- oxblood accent: `#8F2638`
- utility grey: `#B7B3AA`
- white: `#FFFDF8`

No gradients.

The oxblood accent is intentionally not pink. It should appear in small but decisive moments: booking CTA, editorial rule, active state, price emphasis.

## Typography

Two families maximum.

### Display

`Cormorant Garamond`

Use only for large editorial display lines and selected italic words. Do **not** use it for every section heading.

### UI / body

`Archivo`

Use for:

- navigation
- service labels
- prices
- descriptions
- forms
- metadata

The contrast between expressive display and functional grotesk creates the fashion-editorial feel without turning every paragraph into “luxury serif”.

## Grid

- max content width: 1440px
- 12-column desktop logic
- hard alignment lines
- asymmetric hero split
- generous horizontal rules
- small captions lock to image edges
- mobile re-composed, not merely stacked

## Signature motif

**Editorial crop marks / registration marks.**

Use small L-shaped marks and micro captions around selected image frames. They should feel like layout / print-production annotations, not decorative stickers.

Do not combine this with oversized numbering, swatches and vertical type as additional motifs.

## Shape language

- almost no rounded containers
- buttons can have 0–2px radius
- images square-edged
- horizontal rules used as structure
- no floating cards
- no shadow-heavy panels

## Photography direction

Two visual layers:

### Layer A — working salon / service process

Use mostly the same cottonbro visual family:

- wet hair
- colour application
- cutting
- shampoo / treatment
- styling details

This should feel intimate and real, not like a beauty campaign.

### Layer B — salon space

One bright modern interior image gives context. It should not dominate the entire brand.

### Usage rule

Visible stock models and stylists are **editorial / process imagery only**. They are never identified as HALBTON employees, owners or customers.

## Homepage rhythm

1. graphic header
2. editorial hero split
3. sharp point-of-view statement
4. service list with pricing anchors
5. full-width process image interruption
6. colour philosophy / consultation logic
7. team architecture — typography first, no fake portraits
8. compact price index
9. studio/interior moment
10. location / hours / booking
11. photographic final booking transition

The page should alternate between information-dense and image-dominant moments.

## Hero concept

Left: oversized editorial headline.

Suggested copy:

**SCHNITT. FARBE.**

Then one italic display interruption:

**ohne Filter.**

Supporting copy:

> Hair & Colour Studio in Freudenstadt. Schnitte, die auch nach sechs Wochen noch funktionieren. Farbe, die zu Ausgangsbasis und Alltag passt.

Right: vertical/portrait process image with crop-mark system.

One CTA only: `Termin buchen`.

## Service presentation

No service cards.

Use horizontal service rows that behave like a printed index:

`01 Schnitt & Styling  — ab 54 €`

On desktop, hovering/focusing a service can swap an adjacent image/caption. On mobile, information remains directly visible with no hover dependency.

## Team presentation

Because fake stock portraits would damage credibility, team is intentionally text-led.

Example demo entries:

- Mara — Colour / Balayage
- Noah — Cut / Texture
- Leonie — Styling / Brows

All names are fictional demo placeholders and must live in the data/config layer.

For a real client, replace with actual portraits, specialties and booking links.

## Price philosophy

Show real-looking **demo example prices**, clearly stored as demo data.

- predictable services: exact / from price
- colour services: from price + consultation note
- no fake “hidden premium” system

The visual design should make prices easy to scan on mobile.

## Motion budget

- image reveal via clip / opacity
- subtle 10–14px text reveal
- service-image switch
- mobile menu
- booking modal

No scroll-jacking, cursor gimmicks, 3D, marquee spam or animation on every section.

Respect `prefers-reduced-motion`.

## Mobile rules

- booking CTA stays obvious
- hero headline remains graphic but does not exceed 3–4 lines
- service rows become compact price index
- no sideways overflow from editorial typography
- image crops become portrait / 4:5 intentionally
- team and hours remain scan-friendly

## Rejection criteria

Redesign if the result:

- could be a spa by changing the logo
- uses beige + serif as the entire identity
- puts services into three rounded cards
- presents stock faces as staff
- hides pricing
- uses generic “beauty / passion / luxury” copy
- becomes visually soft everywhere
- has no graphic tension or point of view
- sacrifices booking usability for editorial styling

## Definition of done

HALBTON passes when:

- the first viewport is recognizable without the logo
- pricing is understandable within seconds
- colour expertise feels like a real positioning idea
- stock photography is used honestly
- booking is obvious on desktop and mobile
- the site feels materially different from KANTE & KERN and WALDHAUS 48°
- no standard AI / Tailwind component pattern dominates the page
