#!/bin/bash

# Causes startup error in i3block
sleep 5
mpv-mpsyt(){
    while true; do
        title=`$HOME/Documents/Script/i3block/mpsyt_bar.sh`
        notify-send "$title" -i $HOME/Documents/icons/icons8-musical-48.png
        watch -n 3 -g $HOME/Documents/Script/i3block/mpsyt_bar.sh
    done
}

mpv-normal(){
    while true; do
        title1=`$HOME/Documents/Script/i3block/mpv_bar.sh`
        notify-send "$title1" -i $HOME/Documents/icons/icons8-musical-48.png
        watch -n 3 -g $HOME/Documents/Script/i3block/mpv_bar.sh
        pkill -RTMIN+9 i3blocks
    done
}

if pidof -o %PPID -x "mpvWatch.sh">/dev/null; then
    echo "mpvWatch.sh already running"
else
    # title=`$HOME/Documents/Script/i3block/mpsyt_bar.sh`
    # notify-send "$title" -i $HOME/Documents/icons/icons8-musical-48.png
    # # pkill -RTMIN+13 i3blocks
    # watch -n 3 -g $HOME/Documents/Script/i3block/mpsyt_bar.sh
    mpv-mpsyt&
    mpv-normal&
fi
