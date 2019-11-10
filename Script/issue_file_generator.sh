#!/bin/bash
# Add this file to sudoer :NOPASSWD

currentDir="$(dirname "$(realpath "$0")")"
quote=`$currentDir/quotes_generator/main.py`
unix="Unix is user-friendly. It's just picky about who its friends are"
welcome="Welcome! You have come across a mythical place. Feel free to move around"
file="/etc/issue"
# file="$HOME/issue"

# figlet -n -f 'ANSI Shadow' $quote -w 236 > $file
figlet -n -f 'nancyj-underlined' $quote -w 236 > $file
cat /DriveE/Projects/Git/dotfiles/Backup/ascii_art/penguin >> $file
# figlet -f 'banner' $unix -w 241 >> $file
figlet -f 'rectangles' $welcome -w 241 >> $file
