# Demo Build Prompt — KFZ-Werkstatt

Use this as the execution brief for ChatGPT or Codex.

## Mission

Build an original, trustworthy **independent German Meisterwerkstatt website** that feels modern and technically competent without falling into racing/tuning clichés.

Default concept:

> A regional workshop focused on transparent diagnostics, maintenance and repair for everyday vehicles, with modern communication and a calm, human brand voice.

The demo must be convincing enough that a real workshop could retain most of the structure and replace business data, services, photos and booking details.

## Required reading

Read before coding:

1. `docs/ANTI_AI_DESIGN_RULES.md`
2. `docs/MASTER_BUILD_PROCESS.md`
3. `docs/IMAGE_LICENSING.md`
4. `reference-analysis/werkstatt.md`

Do not code before writing a one-page art direction and conversion plan.

# Phase 1 — Fictional business

Define:

- fictional workshop name
- German region/city
- workshop type: independent general repair
- 6–8 real service categories
- primary promise around transparent diagnostics/communication
- opening hours placeholder
- primary CTA `Termin anfragen`
- secondary mobile action `Anrufen`

Do not invent Meister status, certification, warranty or ratings as factual production claims. Demo configuration may include clearly labelled placeholders for later client substitution.

# Phase 2 — Art direction

## Visual thesis

Target:

> Calm technical confidence: documentary workshop photography, clean information hierarchy and small engineering details — no motorsport cosplay.

## Palette

Recommended family:

- light neutral base for readability
- charcoal/navy technical dark
- one practical accent colour

Avoid default red/black racing palette unless there is a real brand reason.

No neon glow, carbon fibre or smoky supercars.

## Typography

Use a practical grotesk for body/UI.

Optional second face: restrained condensed grotesk for large technical labels/headlines.

Do not make every heading italic or “speedy”.

## Signature motif

Choose one:

- diagnostic code / small mono metadata
- workshop job-number system
- thin technical divider/grid line system

Use sparingly.

# Phase 3 — Legal photography

Use real reusable photography that looks like one believable workshop.

Required set:

- 1 clean workshop/technician hero image
- 1 diagnostic laptop/OBD image
- 1 lift/underbody or brake work image
- 1 engine/service detail
- 1 customer vehicle/workshop environment image
- 1 tools/hands detail
- optional reception/team atmosphere image

Avoid hero photography of exotic sports cars unless the business specializes in them.

Create `public/assets/ASSETS.md`.

Do not reuse imagery from Good Vibes Garage, Omaha Car Care, Sage or Rocha's.

# Phase 4 — Homepage architecture

## 1. Utility/header

Above or within the main nav, make practical information easy to find:

- phone
- opening hours
- location/region
- CTA `Termin anfragen`

Mobile should expose call and appointment actions immediately.

## 2. Hero

Must communicate:

- workshop category
- region
- specific trust promise
- appointment action

Example direction, not final copy:

> Erst prüfen. Dann reparieren.
>
> Freie Werkstatt für Diagnose, Wartung und Reparatur in [Region]. Sie entscheiden nach Befund und Preisfreigabe.

One main CTA. Phone can be a secondary text action.

## 3. Trust strip

Use real/placeholder-configurable trust types, not invented numbers.

Possible fields for later client data:

- Meisterbetrieb
- warranty
- digital vehicle check
- replacement car
- parts brands

If data is unavailable, omit rather than fake.

## 4. “Was macht Ihr Auto?” symptom entry

This should be a signature section.

Examples:

- Motorkontrollleuchte an
- Geräusch beim Bremsen
- Klimaanlage wird nicht kalt
- Fahrzeug zieht / vibriert
- Inspektion oder HU fällig

Each leads to a relevant service explanation/contact state.

Use text and small technical cues, not cartoon icons.

## 5. Core services

6–8 services, easy to scan.

Possible:

- Inspektion & Wartung
- Bremsen
- Diagnose & Elektrik
- Klima
- Reifen & Fahrwerk
- Motor / Abgasanlage
- HU/AU Vorbereitung
- optional Hybrid/EV only where the real client supports it

## 6. Transparent process

4 steps:

1. Termin / Annahme
2. Diagnose
3. Befund + Freigabe
4. Reparatur + Übergabe

Make communication and cost approval explicit.

## 7. Diagnostic story

Large documentary photo plus concise copy explaining why diagnosis comes before parts replacement.

## 8. Convenience

Only include client-supported options such as:

- Ersatzwagen
- Hol-/Bringservice
- Schlüsselannahme
- digitale Statusupdates

In demo data, mark placeholders clearly.

## 9. Reviews / proof

No fabricated Google rating.

For visual demo, either use clearly marked placeholder testimonial data or a “Hier stehen später echte Google-Bewertungen” development state that is not presented as production content.

## 10. Workshop/team

Use real-workshop atmosphere and a short human introduction.

Do not pair stock faces with fake employee identities.

## 11. Location + hours

Prominent practical block with map integration placeholder, address and directions.

## 12. Structured appointment request

Fields:

- name
- phone/email
- make/model
- first registration/year optional
- service/problem
- preferred date
- mobility/loaner need optional
- message

Keep it short enough for mobile.

# Phase 5 — Copy rules

German copy.

Tone:

- calm
- clear
- competent
- human
- no macho workshop language

Avoid:

- „Wir bringen Ihre Leidenschaft auf die Straße“
- „Performance trifft Präzision“
- „Ihr Fahrzeug in besten Händen“ unless immediately supported by specifics

Prefer:

> Wir tauschen keine Teile auf Verdacht. Nach der Diagnose erhalten Sie Befund und Kostenfreigabe, bevor wir reparieren.

# Phase 6 — Technical UX

Mobile is priority because many users search while dealing with a vehicle problem.

Consider a restrained sticky mobile action bar with:

- `Anrufen`
- `Termin`

Requirements:

- accessible tap targets
- tel link
- directions link
- no intrusive popup
- no chat bubble covering controls

# Phase 7 — Build checkpoints

A. utility header + nav + hero + trust transition

B. symptom section + services

C. process + diagnostic story + convenience

D. location + appointment form + mobile/accessibility

Stop for visual inspection at each checkpoint.

# Phase 8 — Rejection tests

Reject if:

- hero uses a supercar unrelated to the business
- red/black/neon is the only design idea
- service cards look like a generic theme
- there are speed lines, tachometers, flames or carbon textures
- phone/hours are hard to find
- copy is written only in workshop jargon
- appointment form is a generic “name/email/message” contact form
- fake certifications/ratings appear
- mobile action flow is weak

# Definition of done

- visitor understands service + region in five seconds
- appointment/call path is obvious
- symptoms map naturally to services
- diagnostic transparency is a distinct brand idea
- photography feels documentary and coherent
- source licenses are documented
- business data is centralized for client swap
- mobile feels purpose-built
- no reference layout is copied
