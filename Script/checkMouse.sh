#!/bin/bash
declare -i ID
ID=`xinput list | grep -Eio '(touchpad|glidepoint)\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
if lsusb --verbose 2>&1 | grep --quiet "Mouse"
then
    xinput disable $ID
    echo "Touchpad disabled."
    # notify-send -a 'Touchpad' 'Disabled' -i $HOME/Documents/icons/icons8-touchpadOff-50.png
else

    pgrep "syndaemon" > /dev/null
    if [ $? -ne 0 ]; then
        syndaemon -i 0.2 -d
    fi

    xinput enable $ID
    echo "Touchpad enabled."
    # notify-send -a 'Touchpad' 'Enabled' -i $HOME/Documents/icons/icons8-touchpadOn-64.png
fi
