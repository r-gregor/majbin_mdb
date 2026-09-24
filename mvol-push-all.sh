#! /usr/bin/env bash
# filename: mvol-push-all
# descpt: PUSH majvolpejprs to remote
# last update: 20250402

export VOLGITDIR="${HOME}/majstaf/${HST}git/vlpprs_${HST}"
export VOLWORKDIR="${HOME}/majstaf/majvolpejpers"

# vol_cmd="/usr/bin/git --git-dir=${VOLGITDIR} --work-tree=${VOLWORKDIR}"
vol_cmd() {
	/usr/bin/git --git-dir="${VOLGITDIR}" --work-tree="${VOLWORKDIR}" "$@"
}

echo "[INFO] Push to d_GITHUB ..."
vol_cmd push git@github.com:r-gregor/vlpprs_${HST}.git main
echo "---"

echo "[INFO] Push to d_GITLAB ..."
vol_cmd push git@gitlab.com:r-gregor/vlpprs_${HST}.git main
echo "---"

