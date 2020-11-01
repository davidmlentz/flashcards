#!/bin/bash

# TODO: accept a parameter (string) and select randomly only from questions that contain that string
# e.g. ./flashcards.sh glacier

ANOTHER=y

while true; do
	if [ "$ANOTHER" = "y" ]; then
		clear
		Qtemp=$(grep -e '^[0-9]* Q:' data | sort -R | head -n 1)
		Q=$(echo $Qtemp | sed 's/^\(.*\)Q: \(.*\)$/\2/')
		echo $Q
		num=$(echo $Qtemp | sed 's/^\([0-9]*\)\(.*\)/\1/')
		Atemp=$(grep -e "^$num " data )
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
