#! /usr/bin/env bash

PTH="/home/rgregor/majstaf/majmedia/_DSVM.txt"

if [ $# -ne 1 ]; then
	printf "[ERROR] must supply a part of movie name\n\n"
	exit 1
else
	PTRN="$1"
fi

printf "%-60s --> " "${PTRN}"
grep -i "${PTRN}" "${PTH}"

if [ $? -ne 0 ]; then
	printf "NOT IN THE _DSVM: %s\n" "${PTRN}"
fi

