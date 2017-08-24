#/bin/bash
	echo -e '\e[104mSuper Lazy Open Build Script v1.1.0 for AOSiP\e[0m'
	chmod 777 ~/build/oreo/aosip/AOSiP-Helper-Bot/update_AHS.sh
	cd ~/build/oreo/aosip
# Assign the build path on launch
#	line=$(head -n 1 buildpath.txt)
#	cd $line
# Create a Main Menu with actions
	PS3='Please enter your choice: '
	options=("AOSiP Helper Script" "Check for updates" "Setup" "Quit")
	select opt in "${options[@]}"
	do
    case $opt in

        "AOSiP Helper Script")
        echo -e '\e[32mLaunching AOSiP Helper Script\e[0m'
        sleep 1
        clear
			./aosip.sh
			exit
            ;;
            
        "Check for updates")
        echo -e '\e[32mLaunching the updater script\e[0m'
        sleep 1
        clear
            ./update_AHS.sh
            exit
            ;;
        "Setup")
# Delete buildpath.txt to avoid errors
        rm -rf buildpath.txt
        echo -e '\e[96mSetting up SLOBS. Deleted buildpath.txt\e[0m'
# Assign the build path from AOSiP build folder
    		read -p "Enter your build path for AOSiP: " buildpath
    		echo $buildpath >> buildpathoreo.txt
        echo -e '\e[96mStored build path. Your settings are saved.\e[0m'
        echo -e '\e[91mSLOBS is now auto shutting down. Relaunch to see settings applied.\e[0m'	
# Shutdown to avoid errors
    		sleep 1
    		exit
			;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
exit
