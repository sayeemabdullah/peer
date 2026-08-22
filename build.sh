#!/usr/bin/env bash
# Packages this skill into <name>.skill, the uploadable Agent Skills bundle.
# A .skill file is a ZIP archive with the skill folder nested inside it.
#
# The bundle's inner folder name is taken from the `name:` field in SKILL.md,
# which claude.ai requires to match. That means this works regardless of what
# the checkout directory happens to be called.
set -euo pipefail

cd "$(dirname "$0")"

name="$(awk '/^---$/{n++; next} n==1 && /^name:/{sub(/^name:[[:space:]]*/, ""); print; exit}' SKILL.md)"

if [[ -z "$name" ]]; then
  echo "error: no 'name:' field found in SKILL.md frontmatter" >&2
  exit 1
fi

out="$PWD/$name.skill"
staging="$(mktemp -d)"
trap 'rm -rf "$staging"' EXIT

mkdir "$staging/$name"
cp SKILL.md README.md LICENSE build.sh "$staging/$name/"
cp -R references "$staging/$name/"
find "$staging" -name '.DS_Store' -delete

rm -f "$out"
(cd "$staging" && zip -rq "$out" "$name")

echo "Built $name.skill ($(du -h "$out" | cut -f1))"
