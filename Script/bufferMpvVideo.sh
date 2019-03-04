#!/bin/sh

#Play link from clipboard (register +) in mpv
# mpv $(xsel -b | head -n 1)

url=`xsel -b | head -n 1`
notify-send -u critical "Starting in mpv $url"
mpv --title=floatingMpv $url #title tag is for i3 scratchpad
