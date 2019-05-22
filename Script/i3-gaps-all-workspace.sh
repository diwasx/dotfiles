#!/bin/bash

#Script replacing "gaps all" fixing i3-reload to resetting buffer i3 config
# bindsym mod1+Shift+grave gaps bottom all set 70

# Current workspace
current_ws=`i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -d"\"" -f2`
echo $current_ws

workspace1="1. Terminal" 
workspace2="2. Web"
workspace3="3" 
workspace4="4" 
workspace5="5" 
workspace6="6"
workspace7="7"
workspace8="8"
workspace9="9."
workspace10="10. Music"

# Setting value to each workspace
i3-msg "workspace $workspace1; gaps bottom current set 70"
i3-msg "workspace $workspace2; gaps bottom current set 70"
i3-msg "workspace $workspace3; gaps bottom current set 70"
i3-msg "workspace $workspace4; gaps bottom current set 70"
i3-msg "workspace $workspace5; gaps bottom current set 70"
i3-msg "workspace $workspace6; gaps bottom current set 70"
i3-msg "workspace $workspace7; gaps bottom current set 70"
i3-msg "workspace $workspace8; gaps bottom current set 70"
i3-msg "workspace $workspace9; gaps bottom current set 70"
i3-msg "workspace $workspace10; gaps bottom current set 70"

# Return to current ws
i3-msg "workspace $current_ws"

# Problem: Works only for active workspace
