#!/bin/bash
pkill -f "xwinwrap"
xwinwrap -ov -g 1920x1080+0+0 -- mpv -wid WID $1 --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings
