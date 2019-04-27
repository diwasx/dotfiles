#!/bin/sh

folder="/DriveE/Music"

# List all songs and show in rofi
file=`find $folder -type f -printf "%f\n" | rofi -dmenu -i -l 40`

# Get actual filepath (Stop at first find)
actualFile=`find $folder -name "$file" -print -quit`

# Adding "" to file path
actualFile=\"$actualFile\"
# echo $actualFile

# If file was selected, play it !!!
if [ "$file" != '' ]; then
    # mpv --no-video "$actualFile"
    command="mpv --no-video $actualFile"
    urxvt -e $SHELL -c "$command"
fi
