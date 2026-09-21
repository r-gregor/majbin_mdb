#! /usr/bin/env bash
# filename: mdbgt-diffs-check-all.sh
# descpt: Run git-diffs on multiple dirs
# 20260921
# last: 20260921
# ---

HST="mdb"
for DDD in majbin majrcs metsys; do
	gcheck-git-diffs-${HST} "$DDD";
done






