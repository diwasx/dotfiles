#!/bin/bash

while true; do

    folder="/DriveE/Pictures/Wallpapers"
    file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
    wal -i $file;/home/lanaya/Documents/Script/reloadDunst.sh
    sleep 3600
done


