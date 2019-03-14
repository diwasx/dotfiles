#!/bin/sh

folder="/DriveE/Pictures/Wallpapers/Collection"
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
wal -i $file;/home/lanaya/Documents/Script/reloadDunst.sh
