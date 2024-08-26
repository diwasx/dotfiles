#!/bin/bash
main=~/Documents/Git/dotfiles

pacman -Qqen > $main/Backup/package_list/main && pacman -Qqem > $main/Backup/package_list/aur && echo "Packages list successfully generated"
