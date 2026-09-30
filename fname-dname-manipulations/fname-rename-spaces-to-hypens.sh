#! /usr/bin/env bash
# fname: fname-rename-spaces-to-hypens.sh
# descpt: rename file: convert  spaces to hypens
# 20226031
# last: 20226031
# ---

ARG="$@"

if [ "${ARG}" = "" ]; then
	printf "[E] -- no filename as argument\n"
	exit
else
	FNAME="$ARG"
fi

if [ ! -f "${FNAME}" ]; then
	printf "[E] -- no such file\n"
	exit
fi

NEW_FNAME=$(echo "${FNAME}" | sed 's/ \././' | tr ' ' '-')
printf "[i] renaming:\n'${FNAME}' ... to\n'${NEW_FNAME}'\n"
read -r -p "[?] OK?"
printf "[i] "
mv -v "${FNAME}" "${NEW_FNAME}"
printf "\n"

