#!/usr/bin/env bash
export XAUTHORITY=/home/lanaya/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

light -S 100

# /usr/bin/sudo -u lanaya /usr/bin/paplay --server /run/user/1000/pulse/native /home/lanaya/.i3/sounds/Click1.wav > /dev/null 2>&1
notify-send -i /usr/share/icons/gnome/32x32/status/battery-full-charging.png 'Battery charger connected'