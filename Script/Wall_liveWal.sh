#!/bin/bash

pkill -f "xwinwrap"
pkill -f "Wall_wal.sh"

folder="/DriveE/Pictures/wallpapers_live/"
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
# echo $file
# ffmpeg -i $file -vframes 1 -f image2 /tmp/livewallpaper.jpg -y
ffmpeg -i $file -vframes 1 -f image2 /DriveE/Pictures/Wallpapers/Collection/livewallpaper.jpg -y

# wal -n -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
wal -i /DriveE/Pictures/Wallpapers/Collection/livewallpaper.jpg; /home/lanaya/Documents/Script/reloadDunst.sh
xwinwrap -ov -g 1920x1080+0+0 -- mpv -wid WID $file --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-stop-screensaver --no-input-default-bindings&
