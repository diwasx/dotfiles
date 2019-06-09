if lsusb --verbose 2>&1 | grep --quiet "Mouse"; then
        pkill -f "syndaemon"
        synclient TouchPadOff="1"
    else
        synclient TouchPadOff="0"
        pgrep "syndaemon" > /dev/null
        if [ $? -ne 0 ]; then
            syndaemon -i 0.2 -d
        fi
fi
