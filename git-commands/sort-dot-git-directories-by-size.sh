#! /usr/bin/env bash

for DDD in $(find -type d -name "\.git"); do du -sh $DDD; done | sort -hr

