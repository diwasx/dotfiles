#!/bin/bash
# $WALL_PATH is set up from startx_select script

pkill -f "Wall_wal_work_hour.sh"
if pidof -o %PPID -x "Wall_wal.sh">/dev/null; then
    folder=$WALL_PATH
    file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

    #Transition Effect
    convert $file -fill black -colorize 50% /tmp/wal1.jpg
    convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
    feh --bg-fill /tmp/wal2.jpg
    feh --bg-fill /tmp/wal1.jpg

    wal -i $file; $HOME/Documents/Script/reloadDunst.sh
    # echo "Process already running"
else
    while true; do
        folder=$WALL_PATH
        file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

        #Transition Effect
        convert $file -fill black -colorize 50% /tmp/wal1.jpg
        convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
        feh --bg-fill /tmp/wal2.jpg
        feh --bg-fill /tmp/wal1.jpg

        wal -i $file; $HOME/Documents/Script/reloadDunst.sh
        sleep 3600
    done
fi
