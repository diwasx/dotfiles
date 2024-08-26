#!/bin/bash

#Download clipboard url
url=`xsel -b | head -n 1`
notify-send -u normal "Downloading and coverting to mp3 $url >> /DriveE/Music/"
youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --ignore-errors -o "/DriveE/Music/%(title)s.%(ext)s" $url && notify-send -u normal "Downloaded and convert to mp3 successfully"

if [ $? != 0 ]
then
    notify-send "Url not valid "
fi

