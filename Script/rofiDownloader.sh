#!/bin/sh

# Launch Rofi to download clipboard url
cmd=$(echo -e "Picture \nMusic \nVideo \nTorrent " | rofi -dmenu -font "System San Francisco Display 11" -p WGET)

# If 'Picture' is selected
if (echo $cmd | grep -e Picture);then
    url=$(xsel -b)
    wget $url -P /DriveE/Pictures
    if [ $? -eq 0 ];then
        notify-send -u normal "Successfull downloaded picture" -i $HOME/Documents/icons/icons8-xlarge-icons-48.png
    else
        notify-send -u normal "Error downloadinig picture. Check for copied url" -i $HOME/Documents/icons/icons8-close-window-filled-48.png
    fi
fi

# If 'Music' is selected
if (echo $cmd | grep -e Music);then
    url=$(xsel -b)
    # wget $url -P /DriveE/Music 
    youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --ignore-errors -o "/DriveE/Music/%(title)s.%(ext)s" $url && notify-send -u normal "Downloaded and converted to mp3 successfully" -i $HOME/Documents/icons/icons8-musical-notes-64.png
    if [ $? -ne 0 ];then
        notify-send -u normal "Error downloadinig music. Check for copied url" -i $HOME/Documents/icons/icons8-close-window-filled-48.png
    fi
fi

# If 'Video' is selected
if (echo $cmd | grep -e Video);then
    url=$(xsel -b)
    # wget $url -P /DriveE/Backup/Downloads 
    youtube-dl -o '/DriveE/Backup/Downloads/%(title)s.%(ext)s' $url

    if [ $? -eq 0 ];then
        notify-send -u normal "Successfull downloaded video" -i $HOME/Documents/icons/icons8-video-48.png
    else
        notify-send -u normal "Error downloadinig video. Check for copied url" -i $HOME/Documents/icons/icons8-close-window-filled-48.png
    fi
fi

# If 'Torrent' is selected
if (echo $cmd | grep -e Torrent);then
    url=$(xsel -b)
    # i3-msg workspace 8 && alacritty -e rtorrent $url
    transmissionDaemon_Check.sh
    transmission-remote -a "$url" && notify-send "Torrent added." -i $HOME/Documents/icons/icons8-magnetic-48.png
    if [ $? -ne 0 ]; then
        notify-send "Error. Make sure you copy correct magnet url" -i $HOME/Documents/icons/icons8-close-window-filled-48.png
    fi
fi

