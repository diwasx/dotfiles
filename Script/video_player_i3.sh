#!/bin/bash
# One key for positioning vis in i3wm

if [ "$(cat /tmp/video_player_i3 | grep -e '1')" == 1 ]; then
    echo "1"
    i3-gaps-all-workspace.sh video-play-1
    echo 2 > /tmp/video_player_i3
    # Exporting environmental variable not a good idea. Changing tmp file is good
    # export video_player_i3=0 
elif [ "$(cat /tmp/video_player_i3 | grep -e '2')" == 2 ]; then
    echo "2"
    i3-gaps-all-workspace.sh video-play-2
    echo 3 > /tmp/video_player_i3
else
    echo "3"
    i3-gaps-all-workspace.sh video-play-reset
    echo 1 > /tmp/video_player_i3
    # export video_player_i3=1
fi
