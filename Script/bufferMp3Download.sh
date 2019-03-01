#!/bin/bash

#Download clipboard url
url=`xsel -b | head -n 1`
notify-send -u critical "Downloading and coverting to mp3 $url"
youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --ignore-errors -o "/DriveE/Music/%(title)s.%(ext)s" $url && notify-send -u critical "Downloaded successfully"
