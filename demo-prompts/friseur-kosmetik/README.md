# Demo Build Prompt — Friseur / Kosmetikstudio

Use this as the execution brief for ChatGPT or Codex.

## Mission

Build an original, premium **single-location hair & beauty studio website** that feels art-directed, current and believable.

Default concept:

> A contemporary German salon focused on colour, cut and selected beauty treatments, positioned between neighborhood familiarity and editorial premium quality.

The result must not look like a generic pink/beige salon template.

## Required reading

Read first:

1. `docs/ANTI_AI_DESIGN_RULES.md`
2. `docs/MASTER_BUILD_PROCESS.md`
3. `docs/IMAGE_LICENSING.md`
4. `reference-analysis/friseur-kosmetik.md`

Do not code before defining the brand point of view.

# Phase 1 — Fictional business

Define:

- fictional studio name
- German city/region
- exact focus
- 3–4 service categories
- booking model
- opening hours placeholder
- primary CTA `Termin buchen`
- tone: confident, warm, not over-written

No fake awards, press logos, ratings, staff biographies or certifications.

# Phase 2 — Brand point of view

Choose one clear concept.

Recommended for demo #1:

> Contemporary editorial salon with tactile photography, sharp typography and warm human details — fashion-aware without feeling exclusive or cold.

Do not simultaneously add botanical, clinical, luxury-hotel and Y2K aesthetics.

## Palette

Choose from the photography, not from “salon defaults”.

Possible direction:

- warm neutral background
- ink/black typography
- one unexpected muted accent such as rust, olive, cobalt or burgundy

No default pink/purple gradient.

## Typography

- display type may have fashion/editorial character
- body/UI must remain highly readable
- service prices and booking labels need clear numeric hierarchy

Use two families maximum.

## Signature motif

Choose one:

- crop marks / editorial captions
- oversized service numbering
- restrained vertical type label
- small colour-swatch-like accent blocks

Do not use all of them.

# Phase 3 — Real licensed imagery

Build the layout around a coherent image set.

Required:

- 1 hero beauty/hair editorial image OR salon interior
- 1 salon/interior atmosphere image
- 2 hair/result/detail images
- 1 hands/process image
- 1 product/tool detail
- 1 optional non-identifying stylist-at-work image

If a model is visible, do not present that person as an employee.

Create `public/assets/ASSETS.md`.

Do not reuse imagery from Jo Hansford, Lavender, Eight Five Zero or dbk Salon.

# Phase 4 — Homepage architecture

## 1. Header

- wordmark
- `Services`
- `Preise`
- `Team`
- `Studio`
- `Kontakt`
- CTA `Termin buchen`

## 2. Hero

Use one strong visual idea.

Possible compositions:

- editorial split image/text
- large image with offset headline
- edge-to-edge image with restrained caption system

Must answer:

- what kind of studio
- where
- what makes it distinct
- how to book

No two-button SaaS hero.

## 3. Point of view

One short brand statement explaining how the salon approaches beauty/hair.

It must be specific enough that another salon could disagree.

## 4. Services

Maximum four primary categories.

Example:

- Schnitt & Styling
- Farbe & Balayage
- Pflege & Treatments
- Beauty / Brows

Present as editorial compositions or a strong typographic service list, not four identical icon cards.

## 5. Result / atmosphere image moment

Large photography with minimal copy.

## 6. Team

Show the future structure for:

- name
- role
- specialties
- optional booking link

In demo mode, use clearly fictional text and do not pair a stock face with a fake real-person biography.

A safer demo layout can use abstract/working shots until a client supplies team portraits.

## 7. Prices

Show a clean sample price system:

- exact price where predictable
- `ab` where variable
- consultation note for complex colour services

No hidden pricing purely for aesthetics.

## 8. Studio / philosophy

Use one distinct section for atmosphere, service ritual or product philosophy.

## 9. Reviews

Use placeholder data only if clearly marked in source/config. Never claim Google/Fresha ratings that do not exist.

## 10. Location

Show:

- city/area
- hours
- phone
- directions entry point
- booking CTA

## 11. Final booking transition

Use a strong image/text ending rather than a generic rounded CTA panel.

# Phase 5 — Copy rules

German copy.

Avoid:

- „Deine Schönheit. Unsere Leidenschaft.“
- „Wo Schönheit auf Perfektion trifft.“
- „Erlebe den Unterschied.“
- „Luxus für deine Sinne.“

Prefer concrete service language and personality.

Example:

> Farbe wird bei uns nicht nach Trendkarte gewählt. Wir stimmen Ton, Kontrast und Pflege auf deinen Hautton, deine Ausgangsbasis und deinen Alltag ab.

# Phase 6 — Booking UX

A demo booking action may link to a placeholder modal/page, but integration must be isolated for later providers such as Fresha, Phorest or another client system.

Mobile booking must be obvious.

Do not build a fake complex booking engine unless required.

# Phase 7 — Implementation checkpoints

A. header + hero + brand statement

B. services + main image moment

C. team + pricing + studio philosophy

D. location + booking + mobile/accessibility

Inspect each checkpoint before continuing.

# Phase 8 — Rejection tests

Reject and redesign if:

- pink, beige or gold alone is carrying the identity
- there are three generic service cards with line icons
- stock model photography is presented as actual staff
- every section uses centered serif headings
- the site could become a spa, wedding planner or fashion boutique by changing the logo
- booking is not obvious
- mobile service/pricing information is hard to scan
- copy is full of “passion”, “luxury”, “experience” and “elevate” language

# Definition of done

- one strong brand point of view
- coherent licensed image set
- services and prices are understandable
- booking is frictionless
- team architecture is ready for real client photos
- mobile is deliberately composed
- no fake proof
- no copied reference layout
