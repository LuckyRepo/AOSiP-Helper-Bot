#/bin/bash
  echo -e '\e[104mSolo Build v0.0.1 for AOSiP\e[0m'
# CCACHE
    prebuilts/misc/linux-x86/ccache/ccache -M 100G
		export CCACHE_DIR=/CCACHE
		export USE_CCACHE=1
		export CCACHE_COMPRESS=1
    echo -e '\e[96mHelper Bot just set CCACHE to be used.\e[0m'
# Jack Server Setup
		cd ~/build/aosip/prebuilts/sdk/tools cd ~/build/aosip/prebuilts/sdk/tools
		./jack-admin stop-server
		export JACK_SERVER_VM_ARGUMENTS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx6g"
		./jack-admin start-server
            echo -e '\e[32mSet Jack Server to -Xmx6g\e[0m'
# Start Build
	    echo -e '\e[32mMarking start of build\e[0m'
            sleep 1
            source build/envsetup.sh
	    echo -e '\e[91mYou will now be asked for your device name. Enter it when prompted.\e[0m'
	    echo -e '\e[32mFor example you can enter\e[0m' '\e[91mangler\e[0m' '\e[32mif you want to build for the Huawei 6P\e[0m'
	    sleep 2
# Enter Device
		read -p "Enter your device code name: " devicename
		echo -e '\e[32mYou are going to build for' $devicename '\e[32mdevice model\e[0m'
            echo -e '\e[32mStarting build\e[0m'
            sleep 2
# Lunch
	    lunch aosip_$devicename-userdebug
# Build
            time mka kronic
