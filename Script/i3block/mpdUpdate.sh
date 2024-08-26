#!/bin/sh

#This program runs in background and check any activity of mpd; when it find it, it sends signal to i3block

[ "$(pgrep -x "$(basename "$0")" | wc -l)" -gt 2 ] && exit
while : ; do
	pgrep -x mpd || exit
	mpc idle > /dev/null
	pkill -RTMIN+12 i3blocks ;
done
