#!/usr/bin/env bash
# Cut version <N> of this document: ./build.sh <N>  (see ../README.md)
exec "$(dirname "$0")/../tools/build-doc.sh" cold-zone-call-during-steady-heating-memo "$@"
