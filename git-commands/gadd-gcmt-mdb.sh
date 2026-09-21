#! /usr/bin/env bash
# filename: gadd-gcmt-mdb
# descpt: Auto-run git-add and git-commit with timestamp
# last change: 20250402

gcmd="/usr/bin/git add --verbose ."
gcmt="${HOME}/.local/bin/gcommit-timestamp-mdb"

# display commands
echo -en "running: ${gcmd}\n" && ${gcmd}
echo
echo -en "running: ${gcmt}\n" && ${gcmt}

