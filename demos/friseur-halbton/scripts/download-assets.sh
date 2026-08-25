#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$ROOT/public/assets/images"
mkdir -p "$OUT"

download() {
  local name="$1"
  local url="$2"
  echo "Downloading $name"
  curl -L --fail --silent --show-error "$url" -o "$OUT/$name"
}

download "01-hero.jpg" "https://images.pexels.com/photos/3993312/pexels-photo-3993312.jpeg?cs=srgb&fm=jpg"
download "02-colour.jpg" "https://images.pexels.com/photos/3993311/pexels-photo-3993311.jpeg?cs=srgb&fm=jpg"
download "03-cut.jpg" "https://images.pexels.com/photos/3993442/pexels-photo-3993442.jpeg?cs=srgb&fm=jpg"
download "04-process.jpg" "https://images.pexels.com/photos/3993453/pexels-photo-3993453.jpeg?cs=srgb&fm=jpg"
download "05-wash.jpg" "https://images.pexels.com/photos/3993449/pexels-photo-3993449.jpeg?cs=srgb&fm=jpg"
download "06-finish.jpg" "https://images.pexels.com/photos/3065171/pexels-photo-3065171.jpeg?cs=srgb&fm=jpg"
download "07-studio.jpg" "https://images.pexels.com/photos/7750098/pexels-photo-7750098.jpeg?cs=srgb&fm=jpg"
download "08-tools.jpg" "https://images.pexels.com/photos/7440054/pexels-photo-7440054.jpeg?cs=srgb&fm=jpg"

echo "Assets downloaded to $OUT"
