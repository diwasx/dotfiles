#!/bin/bash

pkill -f "Wall_wal.sh"
echo "/DriveE/Pictures/Wallpapers/work_hour/" > /tmp/wall-path

# If process already running
if pidof -o %PPID -x "Wall_wal_work_hour.sh">/dev/null; then
    folder=`cat /tmp/wall-path`
    file=`find $folder |shuf -n1`

    #Transition Effect
    convert $file -fill black -colorize 50% /tmp/wal1.jpg
    convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
    feh --bg-fill /tmp/wal2.jpg
    feh --bg-fill /tmp/wal1.jpg

    wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
    echo "Process already running"
else
    # If process not running
    while true; do
        folder=`cat /tmp/wall-path`
        file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

        #Transition Effect
        convert $file -fill black -colorize 50% /tmp/wal1.jpg
        convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
        feh --bg-fill /tmp/wal2.jpg
        feh --bg-fill /tmp/wal1.jpg

        wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
        sleep 3600
        # sleep 1800
    done
fi
