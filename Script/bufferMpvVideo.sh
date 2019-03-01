#!/bin/sh

#Play link from clipboard (register +) in mpv
# mpv $(xsel -b | head -n 1)

# Best practice and clear
url=`xsel -b | head -n 1`
notify-send -u critical "Starting in mpv $url"
mpv $url
