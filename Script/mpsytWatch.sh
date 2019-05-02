#!/bin/bash

# ps aux | grep mpsytWatch.sh > /dev/null
# if [ $? -eq 0 ]
# then
#     echo "mpsytWatch.sh already running"
# else
#     while true; do
#         title=`$HOME/Documents/Script/i3block/mpv_i3block.sh`
#         notify-send "$title" -i $HOME/Documents/icons/icons8-musical-48.png
#         # pkill -RTMIN+13 i3blocks
#         watch -n 3 -g $HOME/Documents/Script/i3block/mpv_i3block.sh
#     done
# fi

if pidof -o %PPID -x "mpsytWatch.sh">/dev/null; then
    echo "mpsytWatch.sh already running"
else
    while true; do
        title=`$HOME/Documents/Script/i3block/mpv_i3block.sh`
        notify-send "$title" -i $HOME/Documents/icons/icons8-musical-48.png
        # pkill -RTMIN+13 i3blocks
        watch -n 3 -g $HOME/Documents/Script/i3block/mpv_i3block.sh
    done
fi
