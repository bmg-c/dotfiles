#!/usr/bin/env sh

~/scripts/setkblayout engram 			# Keyboard layout set
xset r rate 340 38 				# Keyboard repeat rate set
brightnessctl set 180 				# Default brightness set
dbus-update-activation-environment --all 	# For SSH and else to work

echo $(( $RANDOM % $(ls /home/ivan/wallpapers | wc -l) )) > /home/ivan/scripts/.currentwp # Randomize wallpapers
echo $(( $RANDOM % $(ls /home/ivan/.secscrwp | wc -l) )) >> /home/ivan/scripts/.currentwp

if [ "$(xrandr | grep "HDMI-A-0")" = "HDMI-A-0 disconnected (normal left inverted right x axis y axis)" ] # If external monitor disconnected - load single monitor setup
then
    xrdb ~/.Xresources  # Load HiDPI settings

    ~/scripts/wpchange.py &
    picom --config ~/.picom.conf &
    ~/scripts/bar.sh &
else
    ~/scripts/wpchange.py &
    picom --config ~/.picom.conf &
    ~/scripts/bar.sh &
    ~/scripts/secbar.sh &
fi 
