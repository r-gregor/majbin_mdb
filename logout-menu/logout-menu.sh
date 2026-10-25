#! /usr/bin/env bash
# fname: logout-menu.sh
# descpt: logout menu -- fzf
# 20261025 v1
# last: 20261025
# ---


choice=$(echo -e "logout\nreboot\nshutdown\nquit" | fzf --reverse +c --info=hidden --prompt="logout/poweroff:")

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


