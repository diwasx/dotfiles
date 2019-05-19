#!/bin/sh
# Mimeapp script for adding torrent to transmission-daemon, but will also start the daemon first if not running.

transmissionDaemon_Check.sh
transmission-remote -a "$@" && notify-send "Torrent added." -i $HOME/Documents/icons/icons8-magnetic-48.png
