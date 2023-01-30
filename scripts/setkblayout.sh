#!/usr/bin/env sh

if [ $# -eq 1 ]; then
	if [ "$1" == "qwerty" ]; then
		setxkbmap -model pc105 -layout us,ru -option "grp:caps_toggle" -option "terminate:ctrl_alt_bksp"
	elif [ "$1" == "engram" ]; then 
		setxkbmap -model pc105 -layout us,us -variant engram-qwerty,russian-qwerty -option "grp:caps_toggle" -option "terminate:ctrl_alt_bksp"
	else 
		echo "You entered a non-valid layout. Choose one from: [ qwerty, engram ]"
	fi
else
	echo "Enter a desired layout. [ qwerty, engram ]"	
fi
