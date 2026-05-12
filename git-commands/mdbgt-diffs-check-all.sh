#! /usr/bin/env bash
# check-all-git-difs

HST="mdb"
for DDD in majbin majrcs metsys; do
	check-git-diffs-${HST}.sh $DDD;
done






