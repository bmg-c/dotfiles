#!/usr/bin/env sh

echo $(( $RANDOM % $(ls /home/ivan/wallpapers | wc -l) )) > /home/ivan/scripts/.currentwp
echo $(( $RANDOM % $(ls /home/ivan/.secscrwp | wc -l) )) >> /home/ivan/scripts/.currentwp
