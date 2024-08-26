#!/bin/bash

if pidof -o %PPID -x "mouseWatch.sh">/dev/null; then
    echo "mouseWatch.sh already running"
else
    while true; do
        cmd="lsusb | grep Mouse"
        watch -n 2 -g $cmd
        lsusb | grep Mouse
        if [ $? -eq 0 ]; then
            pkill -f "syndaemon"
            synclient TouchPadOff="1"
            notify-send "Mouse Connected" -i $HOME/Documents/icons/icons8-mouse-40.png
        else
            synclient TouchPadOff="0"
            pgrep "syndaemon" > /dev/null
            if [ $? -ne 0 ]; then
                syndaemon -i 0.2 -d
            fi
            notify-send "Mouse Disconnected" -i $HOME/Documents/icons/icons8-close-window-filled-48.png
        fi
    done
fi
