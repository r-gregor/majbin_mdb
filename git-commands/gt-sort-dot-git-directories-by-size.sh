#! /usr/bin/env bash
# filename: gt-sort-dot-git-directories-by-size.sh
# descpt: Sort .git repositories by size
# last 20260921
# ---

for DDD in $(find -type d -name "\.git"); do du -sh $DDD; done | sort -hr

