#!/bin/bash
pkill -f "xwinwrap"
ffmpeg -i $1 -vframes 1 -f image2 /tmp/livewallpaper.jpg -y

wal -i /tmp/livewallpaper.jpg; /home/lanaya/Documents/Script/reloadDunst.sh

# xwinwrap -ov -g 1920x1080+0+0 -- mpv -wid WID $1 --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings
xwinwrap -ov -g 1920x1080+0+0 -- mpv -wid WID $1 --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --panscan=1.0 
