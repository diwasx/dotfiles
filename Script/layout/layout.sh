#!/bin/sh

cmd=$(echo -e "Coding-Browser (workspace 2) \nCoding-Music (workspace 1) \nTerminal A (workspace 1) \nTerminal B (workspace 1)" | rofi -dmenu -font "System San Francisco Display 11" -p "Layout")

if (echo $cmd | grep -e "Coding-Browser");then
    i3-msg "workspace 2. Web; append_layout ~/.config/i3/layout/coding-browser.json"
    # chromium&
    chromiumScaleFactor.sh&
    urxvt -e ranger&
    sleep 0.2
    reload_i3.sh
fi

if (echo $cmd | grep -e Coding-Music);then
    i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/coding-music.json"
    urxvt&
    sleep 0.2
    urxvt -fn "xft:Bitstream Vera Sans Mono:pixelsize=7" -e vis&
    sleep 0.2
    reload_i3.sh
fi

if (echo $cmd | grep -e "Terminal A");then
    i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/terminalA.json"
    urxvt&
    urxvt&
    urxvt&
    urxvt&
    sleep 0.2
    reload_i3.sh
fi

if (echo $cmd | grep -e "Terminal B");then
    i3-msg "workspace 1. Terminal; append_layout ~/.config/i3/layout/terminalB.json"
    urxvt&
    urxvt&
    urxvt&
    urxvt&
    sleep 0.2
    reload_i3.sh
fi
