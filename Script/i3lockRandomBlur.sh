#!/bin/sh

tmpbg="/tmp/screen.png"
scrot "$tmpbg"; /home/lanaya/Documents/Program/corrupter/corrupter -mag 1 -boffset 2 "$tmpbg" "$tmpbg"
i3lock -i "$tmpbg"; rm "$tmpbg"
sleep 1
xset dpms force off
