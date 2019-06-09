#!/bin/bash
pkill -f "xwinwrap"

xwinwrap -ov -g 1920x1080+0+0 -- mpv --ytdl-raw-options="yes-playlist=" -wid WID $1 --no-osc --no-osd-bar --player-operation-mode=cplayer --panscan=1.0 
