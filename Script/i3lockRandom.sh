#!/bin/sh

#Selecting random file
folder="/DriveE/Pictures/Wallpapers/Collection"
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
##i3lock only support .png file
# convert $file -resize 1920x1080 /tmp/temp.png

#^! define exact resolution ignoring aspect ratio
convert $file -resize 1920x1080^! /tmp/temp.png
i3lock -i /tmp/temp.png -e
sleep 1
xset dpms force off
