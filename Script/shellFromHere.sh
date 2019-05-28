#!/bin/sh

# Start new shell in current working directory in one of below terminal.
if [[ $1 == "urxvt" ]]; then
    urxvt -e sh -c "cd `pwd`; zsh"&
elif [[ $1 == "alacritty" ]]; then
    alacritty -e sh -c "cd `pwd`; zsh"&
else
    echo "Use argument urxvt, alacritty"
fi
