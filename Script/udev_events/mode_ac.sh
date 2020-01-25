#!/usr/bin/bash

export XAUTHORITY=$HOME/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

light -S 100
exec pkill -RTMIN+16 i3blocks 

# notify-send -i $HOME/Documents/icons/icons8-charging-battery-40.png 'Battery charger connected'
notify-send 'Battery charger connected'
