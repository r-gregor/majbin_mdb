#! /usr/bin/env bash
# fname: logout-menu-dmn.sh
# descpt: logout menu -- dmenu
# 20261025 v1
# last: 20261025
# ---

choice=$(echo -e "logout\nreboot\nshutdown\nquit" | dmenu -fn 'Ubuntu Mono-18' -l 5 -p "logout/poweroff:")

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


