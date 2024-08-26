#!/bin/sh
~/Documents/Script/getForecast.sh

[ "$(stat -c %y ~/.config/weatherreport | awk '{print $1}')" != "$(date '+%Y-%m-%d')" ] && getforecast

case $BLOCK_BUTTON in
    1) $TERMINAL -e less -S ~/.config/weatherreport ;;
    3) pgrep -x dunst >/dev/null && notify-send "<b> ❄️ Weather module:</b> 
- Click for wttr.in forecast.
☔: Chance of rain/snow
❄: Daily low
: Daily high" ;;
esac

printf "%s" "$(sed '16q;d' ~/.config/weatherreport | grep -wo "[0-9]*%" | sort -n | sed -e '$!d' | sed -e "s/^/☔ /g" | tr -d '\n')"

sed '13q;d' ~/.config/weatherreport | grep -o "m\\(-\\)*[0-9]\\+" | sort -n -t 'm' -k 2n | sed -e 1b -e '$!d' | tr '\n|m' ' ' | awk '{print " ❄️",$1 "°","",$2 "°"}'
