#! /usr/bin/env bash
# filename: gall-push-mdb.sh
# last change: 20260818

rmts=( $(git remote) )

for rmt in "${rmts[@]}"; do
	echo "[INFO] git testpush in: $(git remote get-url ${rmt}) ..."
	git push ${rmt} main
	echo "---"
done
echo ""

