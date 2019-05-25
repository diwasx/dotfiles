#!/bin/bash
# One key for positioning vis in i3wm

ps aux | grep "[v]is floating" > /dev/null
if [ $? == 0 ]; then
    echo "Running"
    pkill -f "vis floating"
    # i3-msg "gaps inner all set 0; gaps outer all set 0"
    i3-gaps-all-workspace.sh vis-reset
else
    echo "Not Running"
    i3-gaps-all-workspace.sh vis && exec urxvt -name "vis floating" -fn "xft:Bitstream Vera Sans Mono:pixelsize=7" -e vis 
fi
