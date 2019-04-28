#!/bin/sh

cmd=$(echo -e "Coding-Browser (workspace 2) \nCoding-Music (workspace 1) \nTerminal A (workspace 1) \nTerminal B (workspace 1)" | rofi -dmenu -p "Layout")

if (echo $cmd | grep -e "Coding-Browser");then
    i3-msg "workspace 2. Web; append_layout ~/.config/i3/layout/coding-browser.json"
    chromium&
    alacritty -e ranger&
    reload_i3.sh
fi

if (echo $cmd | grep -e Coding-Music);then
    i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/coding-music.json"
    urxvt&
    sleep 0.5
    urxvt -fn "xft:Bitstream Vera Sans Mono:pixelsize=7" -e vis&
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
