#!/usr/bin/bash

# Activated fron udev rule at /etc/udev/rules.d/
export XAUTHORITY=/home/lanaya/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

#Command
light -S 70
exec pkill -RTMIN+16 i3blocks 

#Sound
# /usr/bin/sudo -u lanaya /usr/bin/paplay --server /run/user/1000/pulse/native /home/lanaya/.i3/sounds/Click1.wav > /dev/null 2>&1

#Notify
# notify-send -i /home/lanaya/Documents/icons/icons8-battery-level-40.png 'Battery charger disconnected'
notify-send 'Battery charger disconnected'

