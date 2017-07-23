#/bin/bash
# Assign gitmail
	line=$(head -n 1 gitmail.txt)
	ssh-keygen -t rsa -b 4096 -C "$line"
