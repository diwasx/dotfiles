#!/bin/bash

pkill -f "Wall_wal_work_hour.sh"
echo "/DriveE/Pictures/Wallpapers/Collection" > /tmp/wall-path
if pidof -o %PPID -x "Wall_wal.sh">/dev/null; then
    folder=`cat /tmp/wall-path`
    file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

    #Transition Effect
    convert $file -fill black -colorize 50% /tmp/wal1.jpg
    convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
    feh --bg-fill /tmp/wal2.jpg
    feh --bg-fill /tmp/wal1.jpg

    wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
    # echo "Process already running"
else
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
    done
fi
