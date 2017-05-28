PATH=~/bin:$PATH
echo -e '\e[91mThis build still contains test code. Not for daily use. Devs Only.\e[0m'
echo -e '\e[104mStarting AOSiP Helper Bot Updater (v0.0.1) Press any key to clear the terminal and continue\e[0m'
	read -n 1 -s
	clear
	echo -e '\e[104mThis will update the helper script. Press any key update.\e[0m'
	read -n 1 -s
		cd AOSiP-Helper-Bot
		echo -e '\e[96mHelper Bot just changed to Bot folder for updating the script\e[0m'
		sleep 1
		git pull
		echo -e '\e[96mHelper Bot pulled git update\e[0m'
		sleep 1
		cd $OLDPWD
		mv AOSiP-Helper-Bot/aosip.sh $PWD
		echo -e '\e[96mScript Updated. Press any key to quit.\e[0m'
		read -n 1 -s
	exit
