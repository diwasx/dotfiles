#!/bin/sh

# Script that use pactl to control volume and set volume limitation. Use from i3 config passing arguments
if [[ $1 == "inc" ]]; then
    volume=`/usr/lib/i3blocks/volume |sed s/%//`
    if [ "$volume" -lt 150 ]; then
        pactl set-sink-volume 0 +5% && exec pkill -RTMIN+10 i3blocks
    else
        echo "Max level exeeded"
    fi

elif [[ $1 == "dec" ]]; then
    pactl set-sink-volume 0 -5% && exec pkill -RTMIN+10 i3blocks
elif [[ $1 == "mute" ]]; then
    pactl set-sink-mute 0 toggle 
else
    echo "use argument inc, dec or mute"
fi
