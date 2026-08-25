# Demo Image Licensing Rules

## Goal

Future demo sites should use **real photography**, not AI-generated imagery, wherever suitable. However, a photograph being publicly visible on the internet does **not** mean it is free to reuse.

Reference-company imagery must therefore never be copied into our demos unless the rights holder explicitly licenses it for reuse.

## Preferred sources

For demo work, prefer sources with clear reuse terms such as:

- Unsplash
- Pexels
- Pixabay
- Wikimedia Commons images with a compatible license
- photographer portfolios only where a specific reuse license is explicitly granted
- public-domain / CC0 collections

The license must be checked on the actual image page at the time the asset is downloaded.

## Do not use

Do not take images from:

- Google Images search results directly
- reference-company websites
- Instagram/Facebook
- Booking.com/Airbnb listings
- Pinterest
- editorial/news websites
- photographers' portfolios without explicit permission

A visible image is not automatically reusable.

## Asset manifest

Every demo must include an asset manifest, for example:

`public/assets/ASSETS.md`

For every external image record:

- local filename
- original image page URL
- source platform
- photographer/creator if provided
- license name or reuse terms
- date checked
- whether attribution is required
- exact attribution text if required

Example:

```md
## hero-workshop.jpg
- Source: Pexels
- Creator: Example Photographer
- Page: <source page URL>
- License: Pexels License
- Checked: 2026-08-25
- Attribution required: No
```

## Download rule

Download the image into the project. Do not hotlink third-party CDN URLs in the finished demo unless the source explicitly requires/provides that method.

## Selection rules

A legal image is not automatically a good image.

Each demo image set should feel like one photographer shot the whole project:

- similar color temperature
- similar contrast
- consistent architectural/interior style
- coherent season/weather
- realistic geography
- no obvious mix of luxury and budget environments
- no contradictory tools/uniforms/vehicle brands

## People

Where a person's face is prominent, prefer sources whose license clearly covers commercial-style reuse and model releases where relevant.

Avoid using a recognizable person as if they are an employee or owner of the fictional demo business. Use people only as atmospheric/editorial imagery unless the demo clearly labels them as placeholders.

## Logos and trademarks

Do not reuse logos from real companies in the demos.

Create a fictional demo brand or use a neutral text wordmark. Vehicle and equipment trademarks may incidentally appear in properly licensed photography, but the demo must not imply sponsorship or official affiliation.

## Later client swap

The demo architecture should make replacing photography easy. Images should be driven by a small structured data layer or predictable asset paths so that a client can replace:

- hero
- service imagery
- project/gallery imagery
- team imagery

without rewriting the page layout.
