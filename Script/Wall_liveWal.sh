#!/bin/bash
# Script to set live wallpaper from live wallpaper directory

# Kill any running processes that causes conflict
pkill -f "xwinwrap"
pkill -f "Wall_wal.sh"

# Directory setup
folder="/DriveE/Pictures/wallpapers_live/"
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
# echo $file

# Save walls with unique name
name=$(basename "$file")
name=${name%.*}".jpg"
echo "FILE NAME SAVED AS "$name
ffmpeg -i $file -vframes 1 -f image2 /DriveE/Pictures/wallpaper/Collection/$name -y

# Set the wallpaper and color theme
wal -i /DriveE/Pictures/wallpaper/Collection/$name; $HOME/Documents/Script/reloadDunst.sh
xwinwrap -ov -g 1920x1080+0+0 -- mpv -wid WID $file --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-stop-screensaver --no-input-default-bindings&
