#!/bin/bash

ANOTHER=y

while true; do
	if [ "$ANOTHER" = "y" ]; then
		clear
		Qtemp=$(grep -e '^[0-9]* Q:' data | sort -R | head -n 1)
		#echo $Qtemp
		Q=$(echo $Qtemp | sed 's/^\(.*\)Q: \(.*\)$/\2/')
		echo $Q
		num=$(echo $Qtemp | sed 's/^\([0-9]*\)\(.*\)/\1/')
		#echo $num
		Atemp=$(grep -e "^$num " data )
		#echo $Atemp
		read YOURANSWER
		A=$(echo $Atemp | sed 's/^\(.*\)A: \(.*\)$/\2/')
		echo $A
		echo ""
		echo "Another question? y/n"
		read ANOTHER
	else
		exit
	fi
done
