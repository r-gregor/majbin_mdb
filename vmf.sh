#! /usr/bin/env bash

### Name:	vmf.sh (vimfind)

if [ $# -eq 1 ]; then
	PTH=$1
	cd $PTH
fi

# additional flag -r to xargs: if nothing selected DO NOT run command
find . | fzf | xargs -r -o vim

