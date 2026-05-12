#! /usr/bin/env bash

if [ "$(pgrep picom)" == "" ]; then
	printf "[INFO] picom not running -- reloading ...\n"
	picom --experimental-backend --config ~/.config/picom/picom.conf -b
else
	printf "[INFO] picom already running\n"
fi

