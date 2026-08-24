#! /usr/bin/env bash
# filename: mvol-testpush-all
# 20260818: added git@codeberg.org:r-gregor/vlpprs ... remote repository
# last: 20260818

HST="mdb"

export VOLGITDIR="${HOME}/majstaf/${HST}git/vlpprs_${HST}"
export VOLWORKDIR="${HOME}/majstaf/majvolpejpers"

vol_cmd="/usr/bin/git --git-dir=${VOLGITDIR} --work-tree=${VOLWORKDIR}"

echo "[INFO] Testpush to GITHUB ..."
${vol_cmd} push --dry-run git@github.com:r-gregor/vlpprs_${HST}.git main
echo "---"

echo "[INFO] Testpush to GITLAB ..."
${vol_cmd} push --dry-run git@gitlab.com:r-gregor/vlpprs_${HST}.git main
echo "---"


echo "[INFO] Testpush to CODEBERG ..."
${vol_cmd} push --dry-run git@codeberg.org:r-gregor/vlpprs_${HST}.git main
echo "---"

