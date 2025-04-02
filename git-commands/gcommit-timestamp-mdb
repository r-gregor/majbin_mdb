#! /usr/bin/env bash
# filename: gcommit-timestamp-mdb
# last change 20250402

cmd="/usr/bin/git commit"
usr="mdb"

if [ $# -eq 1 ]; then
	if [ $1 == "-a" ]; then
		echo -n "/usr/bin/git commit -a ... "
		read -p "OK?"
		$cmd -a
		exit
	else
		msg=$1
	fi
else
	msg="update"
fi

tmpstmp=$(date +"%Y%m%d_%H%M")_${usr}
desc="$msg ${tmpstmp}"

echo -n "/usr/bin/git commit -m \"$desc\" ... "
read -p "OK?"
$cmd -m "$desc"

