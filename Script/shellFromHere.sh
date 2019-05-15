#!/bin/sh

#Start new shell in current working directory in one of below terminal.
dir=`pwd`
if [[ $1 == "urxvt" ]]; then
    urxvt -e zsh -c "cd $dir; zsh"&
elif [[ $1 == "alacritty" ]]; then
    alacritty -e zsh -c "cd $dir; zsh"&
else
    echo "use argument urxvt, alacritty"
fi
