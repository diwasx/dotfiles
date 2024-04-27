#!/bin/bash
# Generate random wallpaper for chrome

# Used in chromiumScaleFactor.sh
folder=$WALL_PATH
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
# path="$HOME/.config/chromium/Default/background.jpg"
path="$HOME/.config/google-chrome/Default/background.jpg"
cp $file $path
