#! /usr/bin/env bash
# filename: gt-all-remotes-push.sh
# descpt: PUSH to all remotes
# last: 20260924

rmts=( $(git remote) )

for rmt in "${rmts[@]}"; do
	echo "[INFO] git PUSH in: $(git remote get-url ${rmt}) ..."
	git push ${rmt} main
	echo "---"
done
echo ""

