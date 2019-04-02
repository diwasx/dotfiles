#!/bin/sh

#Play link from clipboard (register +) in mpv
# mpv $(xsel -b | head -n 1)

url=`xsel -b | head -n 1`
notify-send -u normal "Starting in mpv $url"
mpv --title=floatingMpv $url #title tag is for i3 scratchpad

if [ $? != 0 ]
then
    notify-send "Url not valid"
fi
