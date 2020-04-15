#!/bin/sh
# Script that generates ascii art from wallpaper
# https://github.com/qeesung/image2ascii
# https://github.com/cslarsen/jp2a

# folder="/DriveE/Pictures/Pic/ascii_art/"
folder="/DriveE/Pictures/wallpaper/Collection"
file=`find $folder -type f |shuf -n1`
# file=`find $folder -type f -not -name "*.png"|shuf -n1`

alacritty -e "bash" -c "image2ascii -f $file;bash"& # better color quality
# alacritty -e "bash" -c "jp2a $file --background=dark -b --colors -f;bash"& 
