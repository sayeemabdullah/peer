#!/usr/bin/env bash
# Packages this skill into peer.skill, the uploadable Agent Skills bundle.
# A .skill file is a ZIP archive under the hood, with the skill folder nested
# inside it.
set -euo pipefail

cd "$(dirname "$0")/.."
name="$(basename "$OLDPWD")"

rm -f "$name/$name.skill"

tmp="$(mktemp -d)"
zip -r "$tmp/$name.skill" "$name" \
  -x "$name/.git/*" \
  -x "$name/$name.skill" \
  -x "*/.DS_Store" > /dev/null

mv "$tmp/$name.skill" "$name/$name.skill"
rmdir "$tmp"

echo "Built $name/$name.skill"
