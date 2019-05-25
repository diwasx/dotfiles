#!/bin/bash

# Difference i3-gap scheme binded to buttons by passing argument

# Current workspace
current_ws=`i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -d"\"" -f2`
# echo $current_ws

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

set_gap_all_workspace(){
    # This function replaces "gaps all" fixing i3-reload that was resetting buffer i3 config.
    # bindsym mod1+Shift+grave gaps bottom all set 70

    # Setting value to each workspace
    i3-msg "workspace $workspace1; $1"
    i3-msg "workspace $workspace2; $1"
    i3-msg "workspace $workspace3; $1"
    i3-msg "workspace $workspace4; $1"
    i3-msg "workspace $workspace5; $1"
    i3-msg "workspace $workspace6; $1"
    i3-msg "workspace $workspace7; $1"
    i3-msg "workspace $workspace8; $1"
    i3-msg "workspace $workspace9; $1"
    i3-msg "workspace $workspace10; $1"

    # Return to current ws
    i3-msg "workspace $current_ws"

    # Problem: Works only for active workspace
}

if [[ $1 == "vis" ]]; then
    set_gap_all_workspace "gaps bottom current set 70"
elif [[ $1 == "vis-reset" ]]; then
    set_gap_all_workspace "gaps bottom current set 0"
elif [[ $1 == "conky" ]]; then
    set_gap_all_workspace "gaps left current set 234; gaps right current set 320"
elif [[ $1 == "conky-reset" ]]; then
    set_gap_all_workspace "gaps left current set 0; gaps right current set 0"
elif [[ $1 == "terminal-gap" ]]; then
    i3-msg "gaps inner current set 10"
elif [[ $1 == "reset" ]]; then
    i3-msg "gaps inner all set 0; gaps outer all set 0"
else
    echo "Use argument vis, conky, terminal-gap or reset"
fi
