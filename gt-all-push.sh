#! /usr/bin/env bash
# filename: gt-all-push.sh
# descpt: Test-push to all remnotes
# last: 20260818

rmts=( $(git remote) )

for rmt in "${rmts[@]}"; do
	echo "[INFO] git testpush in: $(git remote get-url ${rmt}) ..."
	git push "${rmt}" main
	echo "---"
done
echo ""

