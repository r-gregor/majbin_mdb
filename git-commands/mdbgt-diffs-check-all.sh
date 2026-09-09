#! /usr/bin/env bash
# check-all-git-difs

HST="mdb"
for DDD in majbin majrcs metsys; do
	gcheck-git-diffs-${HST} $DDD;
done






