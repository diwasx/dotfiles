#!/bin/sh

# Launch Rofi to download clipboard url
cmd=$(echo -e "Picture \nMusic \nVideo \nTorrent " | rofi -dmenu -font "System San Francisco Display 11" -p WGET)

# If 'Picture' is selected
if (echo $cmd | grep -e Picture);then
    url=$(xsel -b)
    wget $url -P /DriveE/Pictures
    if [ $? -eq 0 ];then
        notify-send -u normal "Successfull downloaded picture"
    else
        notify-send -u normal "Error downloadinig picture. Check for copied url"
    fi
fi

# If 'Music' is selected
if (echo $cmd | grep -e Music);then
    url=$(xsel -b)
    # wget $url -P /DriveE/Music 
    youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --ignore-errors -o "/DriveE/Music/%(title)s.%(ext)s" $url && notify-send -u normal "Downloaded and convert to mp3 successfully"
    if [ $? -ne 0 ];then
        notify-send -u normal "Error downloadinig music. Check for copied url"
    fi
fi

# If 'Video' is selected
if (echo $cmd | grep -e Video);then
    url=$(xsel -b)
    wget $url -P /DriveE/Backup/Downloads 
    if [ $? -eq 0 ];then
        notify-send -u normal "Successfull downloaded video"
    else
        notify-send -u normal "Error downloadinig video. Check for copied url"
    fi
fi

# If 'Torrent' is selected
if (echo $cmd | grep -e Torrent);then
    url=$(xsel -b)
    i3-msg workspace 8 && alacritty -e rtorrent $url
fi

