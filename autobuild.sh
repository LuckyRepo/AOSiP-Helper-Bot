#/bin/bash
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
		prebuilts/misc/linux-x86/ccache/ccache -M 100G
		export CCACHE_DIR=/CCACHE
		export USE_CCACHE=1
		export CCACHE_COMPRESS=1
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
