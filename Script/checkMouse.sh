if lsusb --verbose 2>&1 | grep --quiet "Mouse"; then
        synclient TouchPadOff="1"
    else
        synclient TouchPadOff="0"

fi
