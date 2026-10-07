#!/usr/bin/env bash
# pre-commit: a document's markdown may not be committed while the
# folder's Word cut was built from different text. For each staged
# <slug>/<slug>.md with a build.txt beside it, the md's sha256 must
# equal the one build.txt records; otherwise run <slug>/build.sh <N+1>
# (or the same N while the cut is unreleased) and stage the result.
set -euo pipefail
status=0
for md in "$@"; do
  dir="$(dirname "$md")"
  slug="$(basename "$dir")"
  [[ "$(basename "$md")" == "$slug.md" && -f "$dir/build.txt" ]] || continue
  recorded="$(sed -n 's/^md: //p' "$dir/build.txt")"
  actual="$(shasum -a 256 "$md" | cut -c1-64)"
  if [[ "$recorded" != "$actual" ]]; then
    echo "$md changed since $slug's Word cut (v$(sed -n 's/^version: //p' "$dir/build.txt")) was built: run $dir/build.sh <version>" >&2
    status=1
  fi
done
exit $status
