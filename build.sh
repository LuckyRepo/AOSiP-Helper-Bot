#/bin/bash
echo -e '\e[104mSuper Lazy Open Build Script v0.0.2-c for AOSiP\e[0m'
line=$(head -n 1 buildpath.txt)
cd $line
# Create a Main Menu
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
        rm -rf buildpath.txt
        echo -e '\e[96mSetting up SLOBS. Deleted buildpath.txt\e[0m'
    		read -p "Enter your build path for AOSiP: " buildpath
    		echo $buildpath >> buildpath.txt
        echo -e '\e[96mStored build path. Your settings are saved.\e[0m'
        echo -e '\e[91mSLOBS is now auto shutting down. Relaunch to see settings applied.\e[0m'	
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
