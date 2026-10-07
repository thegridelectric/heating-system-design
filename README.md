# heating-system-design

Memos and papers on the hydronic side of the GridWorks houses: what the
fleet data says about distribution loops, return temperatures, stores
and heat pumps, written for the people who design and install the
systems.

## Layout

One folder per document, named by its slug:

    <slug>/
      <slug>.md          the text; git holds its history
      <slug>.v<N>.docx   the current Word cut, made from the markdown
      <slug>.xlsx        the current workbook: every table in the text,
                         one number per cell, made from the data
      build.sh           cuts a version: `./build.sh <N>`
      build.txt          what the cut was made from (hashes, commits)
      archive/           earlier cuts, docx and xlsx, by version
      *.png              figures the text shows

Take a folder and you have the document, its Word file and its
spreadsheet. The Word and Excel files are for reading and for working
on copies; the markdown is the text of record, and a Word cut is made
from it, never the other way. Changes that should last go into the
markdown, then a new cut.

## Versions

A cut is a release: `v2` supersedes `v1`. The date and status are in
the document's own header line. `./build.sh <N>` writes `<slug>.v<N>.docx`
and the workbook, moves the previous cut into `archive/`, and records
in `build.txt` the markdown's hash, the workbook's hash and the
experiments commit the tables came from. Cut a new version when the
text has changed since the last one; the pre-commit hook refuses a
markdown commit whose Word cut was built from different text.

## Building

Needs `pandoc` (`brew install pandoc`) and, for the workbooks, a
sibling `experiments` checkout with its `.venv` (`uv sync` there) and
the data that folder's README describes. The tables come from
`experiments/dist-loop-experiments/sheets.py`, which knows each slug
that has a workbook; a document with no tables there gets a Word cut
only.

    uvx pre-commit install        # once per clone
    cd <slug> && ./build.sh <N>
