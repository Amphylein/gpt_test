# ART DIRECTION — WALDHAUS 48°

## Status

Phase 2 / Ferienwohnung demo #1

## Fictional business

**WALDHAUS 48°** is a fictional small direct-booking apartment house in the Nordschwarzwald with three design-led units. It is intentionally positioned between a private Ferienwohnung and a boutique stay: personal enough to feel believable for a local owner, designed enough to justify a premium rate, but not staged like an international hotel chain.

The brand is fictional. All photographs are licensed demo imagery and must not be presented as documentary proof of a real property.

## Business model

- 3 apartments
- direct-booking website
- target stay: 2–7 nights
- audience: couples, friends, small families, design-conscious hikers
- primary CTA: `Verfügbarkeit prüfen`
- secondary actions are contextual only (`Apartment ansehen`, `Anreise lesen`)
- no fake ratings, awards, booking counters or “best price guaranteed” claim

## Visual thesis

> A quiet Black Forest field journal translated into a direct-booking website: photography first, restrained coordinates and captions, practical booking information without hotel-template chrome.

This is **not** a beige luxury website. The design should feel cool, forested, tactile and slightly editorial.

## Signature motif

**Coordinate/elevation metadata** is the only recurring signature device.

Examples:

- `48° N · NORDSCHWARZWALD`
- `610–930 M · WALD & HÖHEN`
- `03 APARTMENTS`

Do not add topographic SVGs, room-number badges or decorative contour lines as additional motifs.

## Palette

Derived from forest, wet stone, timber and overcast daylight:

- `paper` — #F3F0E9
- `ink` — #171A17
- `forest` — #26382D
- `moss` — #687566
- `stone` — #C7C4BA
- `mist` — #E4E6DF
- `white` — #FAFAF7

No gradients.

The page may switch between paper, forest and image-led sections. Forest green is used structurally, not as a decorative accent on every control.

## Typography

Two families maximum:

- **Newsreader** — editorial display moments only
- **Inter** — navigation, body, labels, controls

The serif should never appear in every heading. Most interface and practical booking information remains sans-serif.

Typography should feel more like a small travel journal than a wedding invitation.

## Grid

Desktop:

- max content width: 1440px
- 12-column conceptual grid
- page gutter: clamp(24px, 4vw, 72px)
- hero uses a 7/5 image/text split rather than centered overlay copy
- apartments intentionally use three different compositions
- image captions align to image edges, not arbitrary cards

Mobile:

- designed as a single-column travel sequence
- availability controls become a compact vertical form
- primary booking CTA remains thumb reachable
- no horizontal carousels required to understand the property

## Photography direction

The image set intentionally separates into two layers:

1. **stay imagery** — warm wood, calm interiors, large windows, natural light
2. **place imagery** — actual Black Forest / Baden-Württemberg forest, water and paths

The interiors do not have to pretend to be one exact apartment because the fictional business has three different units. They must, however, share material and light characteristics.

Avoid imagery that reads as Mediterranean, tropical, alpine ski resort or urban hotel.

## Brand voice

German, concise, observant, practical.

Good:

> Morgens liegt Nebel zwischen den Tannen. Der erste Weg beginnt nicht am Parkplatz, sondern vor der Haustür.

Bad:

> Erleben Sie unvergessliche Momente in luxuriösem Ambiente inmitten atemberaubender Natur.

The copy is allowed to be atmospheric only when it names a concrete sensory or practical detail.

## Homepage rhythm

1. quiet header
2. split hero with one strong image
3. integrated availability bar
4. essential facts as a typographic ledger
5. short place story
6. apartments with non-identical layouts
7. image-led atmosphere interruption
8. “Ein Tag hier” local sequence
9. direct-booking trust / practical booking model
10. region & arrival
11. FAQ
12. final booking moment over/next to photography
13. restrained footer

## Booking UX

The search form is intentionally not a floating glass widget.

It appears as a bordered, paper-like utility strip immediately below the hero with:

- arrival
- departure
- guests
- `Verfügbarkeit prüfen`

For the demo it does not claim live inventory. Submission opens a clear demo result state explaining where a real booking engine would connect.

The integration seam must remain obvious in code so a future client can connect Smoobu, Lodgify, Beds24, bookingkit, a custom PMS or a simple external booking URL.

## Apartment model

### NORD

- 2 guests
- smallest, calmest unit
- one bedroom
- focus: window / reading / quiet

### WALD

- 4 guests
- balanced family/couple unit
- two bedrooms or flexible sleeping model
- focus: living space / table / longer stays

### TAL

- 4 guests
- largest / most open unit
- focus: terrace / view / social space

All details are demo data and must be easy to replace.

## Interaction budget

Exactly one motion language:

- small fade/translate reveals as sections enter the viewport
- image zoom on hover may be subtle and confined to project/apartment imagery

No scroll-jacking, parallax stacks, cursor effects or animated topographic lines.

Respect `prefers-reduced-motion`.

## Anti-AI rejection tests

Reject the design if:

- it becomes beige + serif + rounded cards
- the hero contains a generic centered headline over a darkened image
- all three apartments look like identical e-commerce cards
- amenities are rendered as 12 icon chips
- there is fake social proof
- copy could belong to a hotel in Mallorca
- the booking form looks like a SaaS dashboard
- every section uses the same vertical spacing
- location is treated as a decorative afterthought

## Desired client reaction

The demo succeeds when a Ferienwohnung owner can say:

> “Die Struktur würde ich fast so lassen. Wir müssten nur unsere Bilder, Apartments, Preise und Daten einsetzen.”
