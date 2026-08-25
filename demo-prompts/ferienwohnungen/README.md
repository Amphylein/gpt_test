# Demo Build Prompt — Ferienwohnungen

Use this as the execution brief for ChatGPT or Codex.

## Mission

Build an original, premium **direct-booking Ferienwohnung website** that feels like a real hospitality brand rather than a Lodgify/Booking clone or generic beige AI template.

Default concept for demo #1:

> A small Black Forest stay with 2–3 design-led apartments, quiet regional character, direct booking and real travel utility.

The site must be visually convincing enough that a real host could keep roughly 90% of the layout and replace the brand, photos, apartments, rates and details.

## Required reading

Read before coding:

1. `docs/ANTI_AI_DESIGN_RULES.md`
2. `docs/MASTER_BUILD_PROCESS.md`
3. `docs/IMAGE_LICENSING.md`
4. `reference-analysis/ferienwohnungen.md`

Do not code until an art direction and booking model have been written down.

# Phase 1 — Business model

Define:

- fictional property brand
- region
- 2–3 apartments OR one property; choose explicitly
- guest capacity per unit
- key difference between units
- booking provider placeholder
- primary CTA `Verfügbarkeit prüfen`
- direct-booking benefit only if it is stated truthfully in demo copy

Do not invent platform reviews or “best price guaranteed” claims as fact.

# Phase 2 — Art direction

## Visual thesis

Target:

> Quiet travel editorial built around real property photography, regional texture and direct-book clarity.

## Palette

Derive from the image set and region.

Possible family:

- warm paper/off-white
- deep forest/charcoal
- one muted earth accent

No glassmorphism. No floating gradient booking widget.

## Typography

One expressive display face + one highly readable body/UI face.

Avoid exaggerated luxury serif treatment in every heading.

## Signature motif

Choose one:

- coordinates / elevation metadata
- small journal-like image captions
- room numbering system
- restrained topographic line motif

Use only one as the recurring device.

# Phase 3 — Legal image set

Use real reusable images and document every asset in `public/assets/ASSETS.md`.

For a multi-apartment demo, images must look like they plausibly belong to one property/business.

Required:

- 1 hero property/environment image
- 1 living area
- 1 bedroom
- 1 kitchen/dining
- 1 bathroom/detail
- 1 terrace/garden/view
- 1 region/activity image
- 2 small tactile detail images

Do not use images from Indo House, The Lisboans, Donnini, Sadewa, Airbnb or Booking.com.

# Phase 4 — Homepage structure

## 1. Header

- wordmark
- `Apartments`
- `Der Ort`
- `Erleben`
- `Gut zu wissen`
- `Kontakt`
- CTA `Verfügbarkeit prüfen`

## 2. Hero

Image-led, low UI chrome.

Must show:

- property/brand name
- region
- one specific experiential promise
- availability CTA

Do not add generic “luxury escape” copy.

## 3. Booking search

For multi-unit concept, provide a compact date + guests search directly below/within the hero transition.

It must feel integrated with the design, not like a SaaS dashboard.

If no real booking engine exists yet, create a front-end demo interaction clearly isolated for later integration.

## 4. Essential facts

Show useful facts early:

- units
- guests
- bedrooms
- parking if relevant
- pets if relevant
- sauna/balcony etc only if part of demo concept

Avoid icon-card overload.

## 5. Property story

Short editorial section explaining what makes the stay specific to its place.

## 6. Apartments

Each unit should have:

- name
- occupancy
- size
- bedroom count
- one meaningful differentiator
- representative image
- CTA

Avoid identical cards if possible; use a composed layout.

## 7. Atmosphere / image spread

Use a strong 2–3 image composition with very little copy.

## 8. Region / “Ein Tag hier”

Create a practical local sequence such as:

- morning bakery
- trail / lake / ski access
- afternoon sauna
- dinner nearby

No fake distances unless clearly defined in demo data.

## 9. Direct-book trust

Explain:

- secure checkout placeholder/provider
- cancellation info entry point
- host contact
- booking confirmation process

No fake urgency countdowns.

## 10. Reviews

Use clearly marked demo placeholder data or omit until real reviews exist.

Do not fabricate Airbnb/Booking.com ratings.

## 11. Location and arrival

Useful travel details:

- approximate region
- parking
- rail/bus option if relevant
- check-in approach

## 12. FAQ

Focus on booking friction:

- check-in/out
- pets
- children
- parking
- cancellation
- cleaning fee
- minimum stay

## 13. Final booking CTA

Use a large photographic or quiet editorial ending, not a generic colored CTA box.

# Phase 5 — Copy rules

German language.

Write sensory but concrete copy.

Bad:

> Erleben Sie unvergesslichen Luxus in traumhafter Natur.

Better:

> Morgens Kaffee am Südbalkon, zehn Minuten später beginnt der Waldweg direkt oberhalb des Hauses.

Do not invent nearby attractions as factual until the demo location is selected and verified.

# Phase 6 — Technical model

Structure content so a future client can replace:

- property name
- apartment list
- rates provider
- booking URL
- facts
- images
- contact data
- cancellation text

without redesigning the page.

Recommended content objects:

- `siteConfig`
- `apartments[]`
- `amenities[]`
- `localGuide[]`
- `reviews[]`

# Phase 7 — Build checkpoints

A. header + hero + search

B. story + apartments

C. image spread + local experience + booking trust

D. FAQ + footer + mobile

Inspect after each checkpoint.

# Phase 8 — Rejection tests

Reject if:

- the site looks like a generic hotel template
- beige + serif is doing all the branding
- every amenity is an icon card
- booking is hidden behind multiple clicks
- hero copy says “unforgettable”, “luxury retreat”, “escape” without specifics
- image sources are not documented
- different properties have obviously inconsistent architecture/locations
- mobile search controls are awkward

# Definition of done

- photography dominates appropriately
- booking action is immediate
- essential stay facts are visible early
- local identity is specific
- legal image manifest exists
- booking integration point is cleanly isolated
- mobile version feels designed
- no reference composition is copied
