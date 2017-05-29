#/bin/bash
echo -e '\e[104mSuper Lazy Build Script v0.0.1 for AOSiP\e[0m'
line=$(head -n 1 buildpath.txt)
cd $line
PS3='Please enter your choice: '
options=("AOSiP Helper Script" "Check for updates" "Setup" "Quit")
select opt in "${options[@]}"
do
    case $opt in

        "AOSiP Helper Script")
			./aosip.sh
			exit
            ;;
            
        "Check for updates")
            ./update_AHS.sh
            exit
            ;;
        "Setup")
        rm -rf buildpath.txt
    		read -p "Enter your build path for AOSiP: " buildpath
    		echo $buildpath >> buildpath.txt
			;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
exit
