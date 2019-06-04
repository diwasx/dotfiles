#!/bin/sh

# Start new shell in current working directory in one of below terminal.
if [[ $1 == "urxvt" ]]; then
    urxvt -e sh -c "cd `pwd`; zsh"&
elif [[ $1 == "alacritty" ]]; then
    # using bash for no pywal color scheme
    alacritty -e bash -c "cd `pwd`; bash"&
elif [[ $1 == "st" ]]; then
    st -e sh -c "cd `pwd`; zsh" 2>/dev/null&
else
    echo "Use argument urxvt, alacritty"
fi
