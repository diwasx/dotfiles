#!/bin/sh

folder="/DriveE/Pictures/Pic/ascii_art/"
file=`find $folder |tail -n +2 | shuf -n1`
# file="$HOME/ascii"
st -e "zsh" -c "cat $file;zsh"&
