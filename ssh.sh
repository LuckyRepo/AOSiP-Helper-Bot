#/bin/bash
  read -p "Enter your GitHub Account email: " gitmail
	echo -e '\e[32mYour GitHub Email is' $gitmail '\e[32m\e[0m'
  		ssh-keygen -t rsa -b 4096 -C "$gitmail"
