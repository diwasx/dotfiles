#!/bin/sh

 # * TR_APP_VERSION
 # * TR_TIME_LOCALTIME
 # * TR_TORRENT_DIR
 # * TR_TORRENT_HASH
 # * TR_TORRENT_ID
 # * TR_TORRENT_NAME

notify-send "TRANSMISSION DAEMON" "$TR_TORRENT_NAME has completely downloaded" -i $HOME/Documents/icons/icons8-pirates-of-the-caribbean-48.png
