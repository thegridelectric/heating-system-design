#!/usr/bin/env bash
# Cut a version of one document: its Word file from the markdown, its
# workbook from the experiments repo, and a provenance record.
#
#   tools/build-doc.sh <slug> <version>      e.g. tools/build-doc.sh cold-zone-call-during-steady-heating-memo 2
#
# <slug>/ holds <slug>.md (the text git versions), and after a cut
# <slug>.v<N>.docx, <slug>.xlsx and build.txt. The previous cut's docx
# and xlsx move to <slug>/archive/ with their version in the name.
# The workbook comes from `sheets.py <slug>` in
# ../experiments/dist-loop-experiments when that registry knows the
# slug; a document with no tables there gets no workbook.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SLUG="${1:?usage: build-doc.sh <slug> <version>}"
N="${2:?usage: build-doc.sh <slug> <version>}"
DIR="$ROOT/$SLUG"
MD="$DIR/$SLUG.md"
DOCX="$DIR/$SLUG.v$N.docx"
XLSX="$DIR/$SLUG.xlsx"
EXP="$ROOT/../experiments/dist-loop-experiments"
[[ -f "$MD" ]] || { echo "no $MD" >&2; exit 1; }
command -v pandoc >/dev/null || { echo "pandoc is needed: brew install pandoc" >&2; exit 1; }

# The previous cut goes to archive/, xlsx renamed with its version.
mkdir -p "$DIR/archive"
PREV=""
[[ -f "$DIR/build.txt" ]] && PREV="$(sed -n 's/^version: //p' "$DIR/build.txt")"
for old in "$DIR"/"$SLUG".v*.docx; do
  if [[ -f "$old" && "$old" != "$DOCX" ]]; then mv "$old" "$DIR/archive/"; fi
done
if [[ -f "$XLSX" && -n "$PREV" && "$PREV" != "$N" ]]; then
  mv "$XLSX" "$DIR/archive/$SLUG.v$PREV.xlsx"
fi

echo "==> $SLUG v$N: docx from markdown"
pandoc "$MD" --resource-path="$DIR" -o "$DOCX"

XLSX_LINE="xlsx: none (slug not in sheets.py's registry)"
if grep -q "\"$SLUG\"" "$EXP/sheets.py"; then
  echo "==> workbook from experiments"
  (cd "$EXP" && uv run python sheets.py "$SLUG" > /dev/null)
  cp "$EXP/$SLUG.xlsx" "$XLSX"
  XLSX_LINE="xlsx: $(shasum -a 256 "$XLSX" | cut -c1-64)"
fi

{
  echo "slug: $SLUG"
  echo "version: $N"
  echo "date: $(date -u +%Y-%m-%dT%H:%MZ)"
  echo "md: $(shasum -a 256 "$MD" | cut -c1-64)"
  echo "docx: $(shasum -a 256 "$DOCX" | cut -c1-64)"
  echo "$XLSX_LINE"
  echo "experiments: $(git -C "$EXP" rev-parse --short HEAD)$(git -C "$EXP" diff --quiet -- dist-loop-experiments || echo ' +uncommitted')"
  echo "pandoc: $(pandoc --version | head -1 | awk '{print $2}')"
} > "$DIR/build.txt"
echo "==> wrote $(basename "$DOCX")$( [[ -f "$XLSX" ]] && echo ", $(basename "$XLSX")" ) and build.txt"
