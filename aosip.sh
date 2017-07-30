#/bin/bash
	clear
	echo -e '\e[104mBuild and Sync Script v0.9.6a for AOSiP\e[0m'
	echo -e '\e[91mThis build still contains test code. Not for daily use. Devs and testers Only.\e[0m'
	cd ~/build/aosip
	PATH=~/bin:$PATH
	echo -e '\e[96mHelper Bot just changed BIN Path to current folder to allow for Repo commands\e[0m'
# Create a main menu with actions
	echo -e '\e[32mOffering choices to either Sync, Build or Quit\e[0m'
	PS3='Please enter your choice: '
	options=("Sync Repo" "Build AOSiP" "Auto Sync and Build" "Build from Lunch" "Initialize Repo" "Quit")
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
# Edit version.mk to use SLOBS version instead of Derp
	sed -i '20s/.*/AOSIP_BUILDTYPE ?= SLOBS/' /root/build/aosip/vendor/aosip/config/version.mk
            ;;
        "Build AOSiP")
            echo -e '\e[104mYou are about to build AOSiP\e[0m'
            echo -e '\e[32mMarking start of build\e[0m'
            sleep 1
            source build/envsetup.sh
	    echo -e '\e[91mYou will now be asked for your device name. Enter it when prompted.\e[0m'
	    echo -e '\e[32mFor example you can enter\e[0m' '\e[91mangler\e[0m' '\e[32mif you want to build for the Huawei 6P\e[0m'
	    sleep 2
	# devicename="USER INPUT"
		read -p "Enter your device code name: " devicename
		echo -e '\e[32mYou are going to build for' $devicename '\e[32mdevice model\e[0m'
            echo -e '\e[32mStarting build\e[0m'
            sleep 2
	    lunch aosip_$devicename-userdebug
            time mka kronic
	    pause 1
            exit
            ;;
        "Auto Sync and Build")
            echo -e '\e[104mStarting Full Auto Mode\e[0m'
	    echo -e '\e[91mYou will now be asked for your device name. Enter it when prompted.\e[0m'
	    echo -e '\e[32mFor example you can enter\e[0m' '\e[91mangler\e[0m' '\e[32mif you want to build for the Huawei 6P\e[0m'
	    sleep 1
	# devicename="USER INPUT"
		read -p "Enter your device code name: " devicename
		echo -e '\e[32mYou are going to build for' $devicename '\e[32mdevice model\e[0m'
		sleep 1
	    echo -e '\e[32mStarting sync without using sync.sh\e[0m'
            sleep 1
			repo sync -c -f -j8 --force-sync --no-clone-bundle --no-tags
			echo -e '\e[32mSync finished\e[0m'
			sleep 1
# Edit version.mk to use SLOBS version instead of Derp
			sed -i '20s/.*/AOSIP_BUILDTYPE ?= SLOBS/' /root/build/aosip/vendor/aosip/config/version.mk
# Start AOSiP auto build here
		echo -e '\e[32mStarting to build\e[0m'
		source build/envsetup.sh
		lunch aosip_$devicename-userdebug
		echo -e '\e[32mGot ingredients for making Lunch. Time to cook\e[0m'
			sleep 1
		time mka kronic
			echo -e '\e[32mIf build was successful then you should have a finished ROM in your OUT folder.\e[0m'
			echo -e '\e[91mAuto Build will now exit.\e[0m'
			exit
            ;;
        "Build from Lunch")
            echo -e '\e[104mYou are about to build AOSiP using the lunch menu\e[0m'
            echo -e '\e[32mMarking start of build\e[0m'
            sleep 1
            source build/envsetup.sh
            echo -e '\e[32mPerforming lunch and letting user choose from Menu\e[0m'
            sleep 1
            lunch
            echo -e '\e[32mStarting build\e[0m'
            sleep 1
            time mka kronic
            exit
            ;;
        "Initialize Repo")
            echo -e '\e[104mYou are about to Initialize AOSiP\e[0m'
            sleep 1
	    echo -e '\e[91mPress any key to confirm you want to Initialize AOSiP\e[0m'
	    read -n 1 -s
            echo -e '\e[32mSetting nougat-mr2 as your branch. You can not currently change this.\e[0m'
            repo init -u ssh://git@github.com/AOSiP/platform_manifest.git -b nougat-mr2
            echo -e '\e[32mRepo ready to go\e[0m' 

            continue
            ;;
       "Set Jack Server")
	    export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx6g"
            echo -e '\e[32mSet Jack Server VM Argument to 6g\e[0m' 

            continue
            ;;
	    
	    
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
