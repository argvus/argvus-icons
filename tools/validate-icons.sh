#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
themes=(
  "Argvus Icons"
  "Argvus Dark Icons"
  "Argvus Light Icons"
)

for theme in "${themes[@]}"; do
  index="$root_dir/config/icons/$theme/index.theme"
  test -f "$index"
  grep -q "^Name=$theme$" "$index"
  grep -q '^Inherits=.*Adwaita' "$index"
done
