#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="$ROOT/public/assets/images"
mkdir -p "$DEST"

download() {
  local name="$1"
  local url="$2"
  echo "Downloading $name"
  curl -L --fail --silent --show-error "$url" -o "$DEST/$name"
}

download "01-hero-black-forest.jpg" "https://images.pexels.com/photos/7434709/pexels-photo-7434709.jpeg?auto=compress&cs=tinysrgb&w=2200"
download "02-apartment-nord.jpg" "https://images.pexels.com/photos/27638171/pexels-photo-27638171.jpeg?auto=compress&cs=tinysrgb&w=1800"
download "03-apartment-wald.jpg" "https://images.pexels.com/photos/16068765/pexels-photo-16068765.jpeg?auto=compress&cs=tinysrgb&w=1800"
download "04-apartment-tal.jpg" "https://images.pexels.com/photos/7746559/pexels-photo-7746559.jpeg?auto=compress&cs=tinysrgb&w=1800"
download "05-bedroom-window.jpg" "https://images.pexels.com/photos/8112918/pexels-photo-8112918.jpeg?auto=compress&cs=tinysrgb&w=1800"
download "06-forest-stream.jpg" "https://images.pexels.com/photos/32586577/pexels-photo-32586577.jpeg?auto=compress&cs=tinysrgb&w=1800"
download "07-forest-trail.jpg" "https://images.pexels.com/photos/5174306/pexels-photo-5174306.jpeg?auto=compress&cs=tinysrgb&w=1800"
download "08-mummelsee.jpg" "https://images.pexels.com/photos/20030105/pexels-photo-20030105.jpeg?auto=compress&cs=tinysrgb&w=1800"
download "09-winter-forest.jpg" "https://images.pexels.com/photos/19368559/pexels-photo-19368559.jpeg?auto=compress&cs=tinysrgb&w=1800"

echo "Done. Assets saved to $DEST"
