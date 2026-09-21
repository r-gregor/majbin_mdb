#! /usr/bin/env bash
# filename: ghgl-push-mdb
# descpt: PUSH to all remotes
# last change: 20250402

rmts=( $(git remote) )

for rmt in "${rmts[@]}"; do
	echo "[INFO] git PUSH in: $(git remote get-url ${rmt}) ..."
	git push ${rmt} main
	echo "---"
done
echo ""

