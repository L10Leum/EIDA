#!/bin/bash
while [ -n "$1" ]; do # while loop starts
	case "$1" in
	-i) echo "Installing Docker"
                exec sudo pacman -Syu
                exec ./install.sh
                clear
		shift
		;;
        -h) echo "This script will help you with install "Docker" on you Arch Linux"
            shift
            ;;
        --help) echo "Type -m or -n or -f or -g"
            shift
            ;;
	--)
		shift # The double dash makes them parameters
		break
		;;
	*) echo "Option $1 not recognized" ;;
	esac
	shift

done
total=1
for param in "$@"; do
	echo "#$total: $param"
	total=$(($total + 1))
done