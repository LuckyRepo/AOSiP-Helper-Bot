#/bin/bash
	cd ~
        clear
    echo -e '\e[91mThis build still contains test code. Not for daily use. Devs and testers Only.\e[0m'
    echo -e '\e[91mCurrently built for Ubuntu 15. Any other version and your on your own.\e[0m'
    echo
    echo
# Make build directory
    mkdir ~/build
    mkdir ~/build/aosip
    echo -e '\e[96mCreated build directory\e[0m'
  cd ~/build/aosip
    echo -e '\e[96mChanged directory\e[0m'
#AOSiP needs SSH keys.
  read -p "Enter your GitHub Account email: " gitmail
  echo $gitmail >> gitmail.txt
	echo -e '\e[32mYour GitHub Email is' $gitmail '\e[32m\e[0m'
		echo "Y" | ~/build/aosip/ssh.sh
		echo -e '\e[96mDownload and open "id_rsa.pub" from "~/.ssh" on your server.\e[0m'
		echo -e '\e[96mEnter it into github under settings and SSH keys.\e[0m'
		echo -e '\e[96mContinue here after you have done that.\e[0m'
		pause	
# Delete buildpath.txt to avoid errors
        rm -rf buildpath.txt
# Assign the build path from AOSiP build folder
        echo -e '\e[96mSetting up SLOBS.\e[0m'
            echo ~/build/aosip >> buildpath.txt
        echo -e '\e[96mStored build path. Your settings are saved.\e[0m'
    pause 2
        clear
# Assign the build path on launch
	line=$(head -n 1 buildpath.txt)
	cd $line
# Time to get to work
    echo -e '\e[104mAOSiP Server Setup Script v0.0.4 for AOSiP\e[0m'
# Install repo commands and set BIN path to build path
  mkdir ~/bin
  PATH=~/bin:$PATH
    echo -e '\e[96mSet bin path\e[0m'
  curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
  chmod a+x ~/bin/repo
    echo -e '\e[96mInstalled Repo\e[0m'
  pause 1

# Set up AOSiP Help Bot from Github
    echo ----------------------------------
    echo -e '\e[96mSetting up AOSiP Help Bot\e[0m'
  git clone https://github.com/airwa1kin7/AOSiP-Helper-Bot
  mv AOSiP-Helper-Bot/aosip.sh $PWD
  mv AOSiP-Helper-Bot/ssh.sh $PWD
  mv AOSiP-Helper-Bot/update_AHS.sh $PWD
  mv AOSiP-Helper-Bot/build.sh /root
  chmod 777 aosip.sh
  chmod 777 ssh.sh
  chmod 777 update_AHS.sh
  cd ~
  chmod 777 build.sh
    echo -e '\e[32mHelper Bot ready to go\e[0m'
    echo -e '\e[32mSLOBS installed to root directory. Type "./build.sh" to use it.\e[0m'
    echo -e '\e[32mLaunching Slobs.\e[0m'
    	cd ~
	./build.sh
