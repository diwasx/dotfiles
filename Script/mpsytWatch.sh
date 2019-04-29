#!/bin/bash

while true; do
    title=`$HOME/Documents/Script/i3block/mpv_i3block.sh`
    notify-send "$title" -i $HOME/Documents/icons/icons8-musical-48.png
	# pkill -RTMIN+13 i3blocks
    watch -n 3 -g $HOME/Documents/Script/i3block/mpv_i3block.sh
done
