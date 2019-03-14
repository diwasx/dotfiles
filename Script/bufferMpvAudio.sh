#!/bin/sh

#Play link from clipboard (register +) in mpv
# mpv $(xsel -b | head -n 1)

# Best practice and clear
url=`xsel -b | head -n 1`
notify-send -u critical "Playing audio $url"

urxvt -name mpsyt -e mpsyt playurl $url #name tag is for i3 scratchpad

#Press q to find next similar song. (set auto play to true)
