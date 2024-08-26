#!/bin/sh

# neofetch --image /DriveE/Pictures/mikasa.jpg --size 300px 305px
# xterm -hold -e "neofetch --image /DriveE/Pictures/mikasa.jpg --size 300px 305px --loop; zsh" 
# xterm -e "neofetch --image /DriveE/Pictures/mikasa.jpg --size 300px 305px --loop"
# xterm -e "neofetch --w3m /DriveE/Pictures/mikasa.jpg --size 300px 305px --loop"

folder="/DriveE/Pictures/Pic/PP"
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles
# xterm -e "neofetch --w3m $file --size 300px 305px --loop"
xterm -e "neofetch --w3m $file --size 400px 305px --loop"
# xterm -e "neofetch --w3m /DriveE/Pictures/Pic/PP/the-last-of-us-part-ii-hd-wallpapers-33777-5594609.jpg --size 400px 305px --loop"
# $SHELL
