#!/usr/bin/env bash
# Re-encodes every PNG in this directory from 8-bit colormap (which makes
# purple gradients look posterised on the site) to 24-bit truecolor RGB.
# Run from the repo root:  ./screenshots/fix.sh
#
# Needs Pillow once:
#   python3 -m pip install --user --break-system-packages Pillow

set -eu
cd "$(dirname "$0")"

for f in *.png; do
  [ -f "$f" ] || continue
  kind=$(file -b "$f")
  case "$kind" in
    *"colormap"*)
      python3 -c "
from PIL import Image
Image.open('$f').convert('RGB').save('$f', 'PNG', optimize=False)
"
      echo "  re-encoded $f"
      ;;
    *)
      echo "  skip $f (already $kind)"
      ;;
  esac
done
