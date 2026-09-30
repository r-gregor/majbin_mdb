#! /usr/bin/env bash

### Name:	vmf.sh (vimfind)
# -e flag for exact match

if [ $# -eq 1 ]; then
	PTH=$1
	cd $PTH
fi

# additional flag -r to xargs: if nothing selected DO NOT run command
find . | fzf -e | xargs -r -o vim

