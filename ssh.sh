#/bin/bash
# Update install manifest, install JDK 8 and Curl
  apt-get update
    echo -e '\e[96mInstalling JDK 8\e[0m'
  apt-get install curl
  apt-get install openjdk-8-jdk
  apt-get install git
  apt-get install schedtool
    echo -e '\e[96mInstalled JDK 8\e[0m'
