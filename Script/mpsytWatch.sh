#!/bin/bash

while true; do
    title=`$HOME/Documents/Script/i3block/mpv_i3block.sh`
    notify-send "$title"
	# pkill -RTMIN+13 i3blocks
    watch -n 3 -g $HOME/Documents/Script/i3block/mpv_i3block.sh
done
