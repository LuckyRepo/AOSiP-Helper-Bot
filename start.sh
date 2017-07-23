#/bin/bash
clear
    echo -e '\e[91mThis build still contains test code. Not for daily use. Devs and testers Only.\e[0m'
    echo -e '\e[91mCurrently built for Ubuntu 15. Any other version and your on your own.\e[0m'
    echo
    echo
echo -e '\e[104mAOSiP Server Setup Script v0.0.1 for AOSiP\e[0m'
# Make build directory
  mkdir ~/build
  mkdir ~/build/aosip
    echo -e '\e[96mCreated build directory\e[0m'
  cd ~/build/aosip
    echo -e '\e[96mChanged directory\e[0m'
# Update install manifest, install JDK 8 and Curl
  sudo apt-get update
    echo -e '\e[96mInstalling JDK 8\e[0m'
  sudo apt-get install curl
  sudo apt-get install openjdk-8-jdk
    echo -e '\e[96mInstalled JDK 8\e[0m'
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
  mv AOSiP-Helper-Bot/update_AHS.sh $PWD
  mv AOSiP-Helper-Bot/build.sh /root
  chmod 777 aosip.sh
  chmod 777 update_AHS.sh
  cd ~
  chmod 777 build.sh
    echo -e '\e[32mHelper Bot ready to go\e[0m'
    echo -e '\e[32mSLOBS installed to root directory. Type "./build.sh" to use it.\e[0m'
