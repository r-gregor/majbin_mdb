#! /usr/bin/env bash
# filename: gt-diffs-check-all.sh
# descpt: Run git-diffs on multiple dirs
# 20260921
# last: 20260921
# ---

for DDD in majbin majrcs metsys; do
	gt-check-git-diffs "$DDD";
done

