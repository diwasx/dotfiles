#!/bin/sh

if [ -z $1 ]; then
    # echo "no argumentpasssed "
    pkill -f "xwinwrap"
    folder=$WALL_PATH
    file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

    # Another random wallpaper for dual screen
    file1=`find $folder |shuf -n1`

    #Transition effect

    convert $file -fill black -colorize 33% /tmp/wal1.jpg
    convert /tmp/wal1.jpg -fill black -colorize 33% /tmp/wal2.jpg
    convert /tmp/wal2.jpg -fill black -colorize 33% /tmp/wal3.jpg
    feh --bg-fill /tmp/wal3.jpg $file1
    feh --bg-fill /tmp/wal2.jpg $file1
    feh --bg-fill /tmp/wal1.jpg $file1


    wal -i $file -n; $HOME/Documents/Script/reloadDunst.sh
    feh --bg-fill $file $file1

else
    # echo "argumentpasssed "
    pkill -f "xwinwrap"
    wal -i $1
fi
