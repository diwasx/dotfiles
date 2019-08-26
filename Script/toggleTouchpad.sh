#!/bin/bash
declare -i ID
ID=`xinput list | grep -Eio '(touchpad|glidepoint)\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
declare -i STATE
STATE=`xinput list-props $ID|grep 'Device Enabled'|awk '{print $4}'`
if [ $STATE -eq 1 ]
then
    pkill -f "syndaemon"

    xinput disable $ID
    echo "Touchpad disabled."
    notify-send -a 'Touchpad' 'Disabled' -i /home/lanaya/Documents/icons/icons8-touchpadOff-50.png
else

    pgrep "syndaemon" > /dev/null
    if [ $? -ne 0 ]; then
        syndaemon -i 0.2 -d
    fi

    xinput enable $ID
    echo "Touchpad enabled."
    notify-send -a 'Touchpad' 'Enabled' -i /home/lanaya/Documents/icons/icons8-touchpadOn-64.png
fi
