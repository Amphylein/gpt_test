#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="$ROOT_DIR/public/assets/images"
mkdir -p "$OUT_DIR"

fetch() {
  local url="$1"
  local out="$2"
  printf 'Downloading %s\n' "$out"
  curl --fail --location --retry 3 --retry-delay 2 --silent --show-error \
    "$url" -o "$OUT_DIR/$out"
}

fetch 'https://images.pexels.com/photos/6933769/pexels-photo-6933769.jpeg?cs=srgb&dl=pexels-artbovich-6933769.jpg&fm=jpg' '01-hero-kitchen.jpg'
fetch 'https://images.pexels.com/photos/8143944/pexels-photo-8143944.jpeg?cs=srgb&dl=pexels-artbovich-8143944.jpg&fm=jpg' '02-kitchen-cabinetry.jpg'
fetch 'https://images.pexels.com/photos/7031583/pexels-photo-7031583.jpeg?cs=srgb&dl=pexels-artbovich-7031583.jpg&fm=jpg' '03-staircase.jpg'
fetch 'https://images.pexels.com/photos/6284237/pexels-photo-6284237.jpeg?cs=srgb&dl=pexels-artbovich-6284237.jpg&fm=jpg' '04-dark-kitchen.jpg'
fetch 'https://images.pexels.com/photos/5490164/pexels-photo-5490164.jpeg?cs=srgb&dl=pexels-rachel-claire-5490164.jpg&fm=jpg' '05-workshop.jpg'
fetch 'https://images.pexels.com/photos/5973968/pexels-photo-5973968.jpeg?cs=srgb&dl=pexels-ono-kosuki-5973968.jpg&fm=jpg' '06-measuring.jpg'
fetch 'https://images.pexels.com/photos/5974332/pexels-photo-5974332.jpeg?cs=srgb&dl=pexels-ono-kosuki-5974332.jpg&fm=jpg' '07-sanding.jpg'
fetch 'https://images.pexels.com/photos/7480453/pexels-photo-7480453.jpeg?cs=srgb&dl=pexels-cottonbro-7480453.jpg&fm=jpg' '08-craftsperson.jpg'

printf '\nDone. Assets written to:\n%s\n' "$OUT_DIR"
printf 'Review public/assets/ASSETS.md before public/commercial publication.\n'
