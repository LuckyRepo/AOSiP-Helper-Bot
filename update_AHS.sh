#/bin/bash
# Set bin path to avoid issues	
	PATH=~/bin:$PATH
# Usual blah blah blah
echo -e '\e[91mThis build still contains test code. Not for daily use. Devs Only.\e[0m'
echo -e '\e[104mStarting AOSiP Helper Bot Updater v1.1.0\e[0m'
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
#Helper Bot Move
			if mv AOSiP-Helper-Bot/aosip.sh $PWD | grep -q "mv: cannot stat 'AOSiP-Helper-Bot/aosip.sh': No such file or directory"; then
  			echo -e '\e[91mHelper Script did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mHelper Script Updated.\e[0m'
			fi
#Updater Script Move
			if mv AOSiP-Helper-Bot/update_AHS.sh $PWD | grep -q "mv: cannot stat 'AOSiP-Helper-Bot/update_AHS.sh': No such file or directory"; then
  			echo -e '\e[91mUpdater Script did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mUpdater Script Updated.\e[0m'
			fi
#SLOBS Move
			if mv AOSiP-Helper-Bot/build.sh /root | grep -q "mv: cannot stat 'AOSiP-Helper-Bot/build.sh': No such file or directory"; then
  			echo -e '\e[91mSLOBS did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mSLOBS Updated.\e[0m'
			fi
#Setup Script Move
			if mv AOSiP-Helper-Bot/start.sh $PWD | grep -q "mv: cannot stat 'AOSiP-Helper-Bot/start.sh': No such file or directory"; then
  			echo -e '\e[91mSetup Script did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mSetup Script Updated.\e[0m'
			fi
#Solo Build Move
			if mv AOSiP-Helper-Bot/solobuild.sh $PWD | grep -q "mv: cannot stat 'AOSiP-Helper-Bot/solobuild.sh': No such file or directory"; then
  			echo -e '\e[91mSolo Build did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mSetup Script Updated.\e[0m'
#Repo Sync Move
			if mv AOSiP-Helper-Bot/syncrepo.sh $PWD | grep -q "mv: cannot stat 'AOSiP-Helper-Bot/syncrepo.sh': No such file or directory"; then
  			echo -e '\e[91mRepo Sync did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mSetup Script Updated.\e[0m'
			fi
#Auto Build Move
			if mv AOSiP-Helper-Bot/autobuild.sh $PWD | grep -q "mv: cannot stat 'AOSiP-Helper-Bot/autobuild.sh': No such file or directory"; then
  			echo -e '\e[91mAuto Build did not need to be updated.\e[0m'
  			else
  			echo -e '\e[91mSetup Script Updated.\e[0m'
			fi
# Change Permissions
		chmod 777 aosip.sh
		chmod 777 /root/build.sh
		chmod 777 update_AHS.sh
		echo -e '\e[96mScript Updated. Press any key to quit.\e[0m'
		read -n 1 -s
	exit
end
