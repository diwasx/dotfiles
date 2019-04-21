#!/usr/bin/env bash

# Activated fron udev rule at /etc/udev/rules.d/
export XAUTHORITY=/home/lanaya/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

#Command
light -S 80

#Sound
# /usr/bin/sudo -u lanaya /usr/bin/paplay --server /run/user/1000/pulse/native /home/lanaya/.i3/sounds/Click1.wav > /dev/null 2>&1

#Notify
/usr/bin/notify-send -i /usr/share/icons/gnome/32x32/status/battery-caution.png 'Battery charger disconnected'
