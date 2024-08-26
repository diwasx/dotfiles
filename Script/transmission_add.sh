#!/bin/sh
# Mimeapp script for adding torrent to transmission-daemon, but will also start the daemon first if not running.

#Take magnet argument
if [[ $1 != "" ]]; then
    transmissionDaemon_Check.sh
    transmission-remote -a "$1" && notify-send "Torrent added." -i $HOME/Documents/icons/icons8-magnetic-48.png
else
    echo "Required magnet as argument"
fi
