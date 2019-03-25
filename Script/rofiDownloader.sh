#!/bin/sh

# Launch Rofi to download clipboard url
cmd=$(echo -e "Picture \nMusic \nVideo \nTorrent " | rofi -dmenu -p WGET)

# If 'Picture' is selected
if (echo $cmd | grep -e Picture);then
    url=$(xsel -b)
    wget $url -P /DriveE/Pictures
    if [ $? -eq 0 ];then
        notify-send -u critical "Successfull downloaded picture"
    else
        notify-send -u critical "Error downloadinig picture. Check for copied url"
    fi
fi

# If 'Music' is selected
if (echo $cmd | grep -e Music);then
    url=$(xsel -b)
    # wget $url -P /DriveE/Music 
    youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --ignore-errors -o "/DriveE/Music/%(title)s.%(ext)s" $url && notify-send -u critical "Downloaded and convert to mp3 successfully"
    if [ $? -eq 0 ];then
        notify-send -u critical "Successfull downloaded music"
    else
        notify-send -u critical "Error downloadinig music. Check for copied url"
    fi
fi

# If 'Video' is selected
if (echo $cmd | grep -e Video);then
    url=$(xsel -b)
    wget $url -P /DriveE/Backup/Downloads 
    if [ $? -eq 0 ];then
        notify-send -u critical "Successfull downloaded video"
    else
        notify-send -u critical "Error downloadinig video. Check for copied url"
    fi
fi

# If 'Torrent' is selected
if (echo $cmd | grep -e Torrent);then
    url=$(xsel -b)
    i3-msg workspace 8 && alacritty -e rtorrent $url
fi

