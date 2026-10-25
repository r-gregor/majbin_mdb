#! /usr/bin/env bash
# fname: logout-menu-rofi.sh
# descpt: logout menu -- rofi
# 20261025 v1
# last: 20261025
# ---


choice=$(echo -e "logout\nreboot\nshutdown\nquit" | rofi -dmenu -no-fixed-num-lines)

case $choice in
	logout)
		sudo loginctl terminate-user ${USER}
		;;
	
	reboot)
		sudo reboot
		;;
	
	shutdown)
		sudo systemctl poweroff
		;;

	quit)
		exit
		;;

	*)
		exit
	;;
esac


