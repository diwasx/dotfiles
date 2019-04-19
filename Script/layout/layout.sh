#!/bin/sh

cmd=$(echo -e "Coding(workspace 2) \nTerminal A (workspace 1) \nTerminal B (workspace 1)" | rofi -dmenu -p "Layout")

if (echo $cmd | grep -e Coding);then
    i3-msg "workspace 2. Web; append_layout ~/.config/i3/layout/coding.json"
    chromium&
    alacritty -e ranger&
    reload_i3.sh
fi

if (echo $cmd | grep -e "Terminal A");then
    i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/terminalA.json"
    urxvt&
    urxvt&
    urxvt&
    urxvt&
    reload_i3.sh
fi

if (echo $cmd | grep -e "Terminal B");then
    i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/terminalB.json"
    urxvt&
    urxvt&
    urxvt&
    urxvt&
    reload_i3.sh
fi
