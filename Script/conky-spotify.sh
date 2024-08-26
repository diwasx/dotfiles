#!/bin/bash

ps aux | grep "[c]onky -c" > /dev/null
if [ $? == 0 ]; then
    echo "Running"
    pkill -f "conky -c"
    # i3-msg "gaps inner all set 0; gaps outer all set 0"
    i3-msg "gaps left all set 0; gaps right all set 0"
else
    echo "Not Running"
    conky -c $HOME/Documents/conky-mikasa/config/spotify/conky-spotify&
fi

