#!/bin/bash
# $WALL_PATH is set up from startx_select script

pkill -f "Wall_wal_work_hour.sh"
if pidof -o %PPID -x "Wall_wal.sh">/dev/null; then
    folder=$WALL_PATH
    file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

    # Another random wallpaper for dual screen
    file1=`find $folder |shuf -n1`

    # Transition Effect
    convert $file -fill black -colorize 50% /tmp/wal1.jpg
    convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
    feh --bg-fill /tmp/wal2.jpg $file1
    feh --bg-fill /tmp/wal1.jpg $file1

    wal -i $file -n; $HOME/Documents/Script/reloadDunst.sh

    feh --bg-fill $file $file1

    # echo "Process already running"

else
    while true; do
        folder=$WALL_PATH
        file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

        # Another random wallpaper for dual screen
        file1=`find $folder |shuf -n1`

        # Transition Effect
        convert $file -fill black -colorize 33% /tmp/wal1.jpg
        convert /tmp/wal1.jpg -fill black -colorize 33% /tmp/wal2.jpg
        convert /tmp/wal2.jpg -fill black -colorize 33% /tmp/wal3.jpg
        feh --bg-fill /tmp/wal3.jpg $file1
        feh --bg-fill /tmp/wal2.jpg $file1
        feh --bg-fill /tmp/wal1.jpg $file1

        wal -i $file -n; $HOME/Documents/Script/reloadDunst.sh

        feh --bg-fill $file $file1

        sleep 3600
    done
fi
