#!/bin/bash

# This script optionally accepts a parameter (string) to filter for questions that include that string.
# e.g. ./flashcards.sh Agent

#DATAFILE=data
DATAFILE=ddog_data

ANOTHER=y

while true; do
    if [ "$ANOTHER" = "y" ]; then
        clear
        Qtemp=$(grep -e '^[0-9]* Q:' $DATAFILE | sort -R | head -n 1)
	Q=$(echo $Qtemp | sed 's/^\(.*\)Q: \(.*\)$/\2/')

        if [[ -n $1 ]]; then
             # We received a string to use as a filter and show only questions that match
             echo "$Q" | grep -i "$1" > /dev/null
             if [ $? -eq 1 ]; then
               continue
             fi
        fi

        echo $Q
        num=$(echo $Qtemp | sed 's/^\([0-9]*\)\(.*\)/\1/')
	Atemp=$(grep -e "^$num " $DATAFILE )
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
