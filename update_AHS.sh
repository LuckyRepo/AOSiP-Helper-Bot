#/bin/bash
PATH=~/bin:$PATH
echo -e '\e[91mThis build still contains test code. Not for daily use. Devs Only.\e[0m'
echo -e '\e[104mStarting AOSiP Helper Bot Updater v0.0.2\e[0m'
echo -e '\e[104mPress any key to clear the terminal and continue\e[0m'
	read -n 1 -s
	clear
	echo -e '\e[104mThis will update the helper script. Press any key update.\e[0m'
	read -n 1 -s
		cd AOSiP-Helper-Bot
		echo -e '\e[96mHelper Bot just changed to Bot folder for updating the script\e[0m'
		sleep 1
		if git pull | grep -q 'Already up-to-date.'; then
  		echo -e '\e[91mThere where no changes detected. You should have the latest script.\e[0m'
  		echo -e '\e[96mHelp Bot Updater will now exit.\e[0m'
  		exit
		fi
		echo -e '\e[96mHelper Bot pulled git update\e[0m'
		sleep 1
		cd $OLDPWD
		mv AOSiP-Helper-Bot/aosip.sh $PWD
		echo -e '\e[96mScript Updated. Press any key to quit.\e[0m'
		read -n 1 -s
	exit
