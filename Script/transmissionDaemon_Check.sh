#Check if transmission daemon is running, if not start it
ps cax | grep transmission-da > /dev/null
if [ $? -ne 0 ]; then
    transmission-daemon
    notify-send "Starting transmission daemon..." -i $HOME/Documents/icons/icons8-t-filled-48.png
    sleep 0.5
fi
