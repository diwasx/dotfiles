#!/bin/bash
# Generate random wallpaper for chrome

# Used in chromiumScaleFactor.sh
folder=$WALL_PATH
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
path='/home/lanaya/.config/chromium/Default/background.jpg'
mv $file $path
