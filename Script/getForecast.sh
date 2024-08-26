#!/bin/sh
# Updates weather forecast
ping -q -w 1 -c 1 "$(ip r | grep default | tail -1 | cut -d ' ' -f 3)" >/dev/null || exit
location="$1"; [ -z "$location" ] || location="$location+"
curl -s "wttr.in/$location" > ~/.config/weatherreport
# pkill -RTMIN+5 i3blocks && notify-send "❄️ Weather forecast updated." -i $HOME/Documents/icons/icons8-stormy-weather-48.png
pkill -RTMIN+5 i3blocks 
