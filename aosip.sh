#/bin/bash
echo -e '\e[32mThis version uses SLEEP to allow for easy reading. 1 second delay is normal operation\e[0m'
echo -e '\e[104mStarting AOSiP Helper. Press any key to clear the terminal and continue\e[0m'
read -n 1 -s
clear
echo -e '\e[104mBuild and Sync Script v0.9.1 for AOSiP\e[0m'
echo -e '\e[91mThis build still contains test code. Not for daily use. Devs Only.\e[0m'
PATH=~/bin:$PATH
echo -e '\e[96mHelper Bot just changed BIN Path to current folder to allow for Repo commands\e[0m'
echo -e '\e[32mOffering choices to either Sync, Build or Quit\e[0m'
PS3='Please enter your choice: '
options=("Sync Repo" "Build AOSiP" "Dev Test" "Initialize AOSiP repo" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Sync Repo")
            echo -e '\e[104mYou chose to sync\e[0m'
            sleep 1
            echo -e '\e[32mStarting sync without using sync.sh\e[0m'
            sleep 1
			repo sync -c -f -j8 --force-sync --no-clone-bundle --no-tags
			echo -e '\e[32mSync finished\e[0m'
            ;;
        "Build AOSiP")
            echo -e '\e[104mYou are about to build AOSiP\e[0m'
            echo -e '\e[32mMarking start of build\e[0m'
            sleep 1
            source build/envsetup.sh
            echo -e '\e[32mPerforming lunch and letting user choose from Menu\e[0m'
            sleep 1
            lunch
            echo -e '\e[32mStarting build\e[0m'
            sleep 1
            time mka kronic
            
            ;;
        "Dev Test")
            echo -e '\e[104mStarting Dev Test Print Out\e[0m'
            sleep 1
            echo 'normal text'
            sleep 1
            echo -e '\e[32mPerforming an action text\e[0m'
            sleep 1
            echo -e '\e[96mAction performed by bot text\e[0m'
            sleep 1
            echo -e '\e[91mDev Warning text\e[0m'
            sleep 1
            echo 'Dev Text Test Complete'
            
            ;;
        "Initialize AOSiP repo")
            echo -e '\e[104mYou are about to Initialize AOSiP\e[0m'
            sleep 1
	    echo -e '\e[91mPress any key to confirm you want to Initialize AOSiP\e[0m'
	    read -n 1 -s
            echo -e '\e[32mSetting nougat-mr2 as your branch. You can not currently change this.\e[0m'
            repo init -u ssh://git@github.com/AOSiP/platform_manifest.git -b nougat-mr2
            echo -e '\e[32mRepo ready to go\e[0m' 

            continue
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
