#This script run lyric_scratchpad in background, sleep 3 sec to search and display it to screen
#Problem when merging this to its parent script
urxvt -name lyrics_scratchpad -e $HOME/Documents/Script/lyrics_scratchpad.sh& sleep 3;i3-msg '[instance="lyrics_scratchpad"] scratchpad show'
