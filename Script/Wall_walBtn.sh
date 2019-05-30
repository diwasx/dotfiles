#!/bin/sh

pkill -f "xwinwrap"
folder="/DriveE/Pictures/Wallpapers/Collection"
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

#Transition effect
convert $file -fill black -colorize 50% /tmp/wal1.jpg
convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
feh --bg-fill /tmp/wal2.jpg
feh --bg-fill /tmp/wal1.jpg

# wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
wal -i $file; 
