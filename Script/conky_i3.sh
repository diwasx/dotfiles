#!/bin/bash
# One key for positioning vis in i3wm

ps aux | grep "[c]onky -c" > /dev/null
if [ $? == 0 ]; then
    echo "Running"
    pkill -f "conky -c"
    i3-msg "gaps inner all set 0; gaps outer all set 0"
else
    echo "Not Running"
    bash $HOME/Documents/conky/run.sh
    # conky -c ./config/main-stat&
    # # conky -c ./config/weather&
    # conky -c ./config/clock&
    # conky -c ./config/calender&
    # conky -c ./config/mpd&
    # conky -c ./config/todo&
    # conky -c ./config/speed&
    i3-gaps-all-workspace.sh conky

    # i3-gaps-all-workspace.sh && exec urxvt -name "vis floating" -fn "xft:Bitstream Vera Sans Mono:pixelsize=7" -e vis 
fi

