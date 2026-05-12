#! /usr/bin/env bash
# filename: mvol-push-all
# last update: 20250402

HST="mdb"

export VOLGITDIR="${HOME}/majstaf/${HST}git/vlpprs_${HST}"
export VOLWORKDIR="${HOME}/majstaf/majvolpejpers"

vol_cmd="/usr/bin/git --git-dir=${VOLGITDIR} --work-tree=${VOLWORKDIR}"

echo "[INFO] Push to d_GITHUB ..."
${vol_cmd} push git@github.com:r-gregor/vlpprs_${HST}.git main
echo "---"

echo "[INFO] Push to d_GITLAB ..."
${vol_cmd} push git@gitlab.com:r-gregor/vlpprs_${HST}.git main
echo "---"

