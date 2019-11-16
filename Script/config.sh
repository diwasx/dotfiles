#!/bin/bash
cp ~/.vimrc /DriveE/Projects/Git/dotfiles/
cp ~/.linopenrc /DriveE/Projects/Git/dotfiles/
cp ~/.gitconfig /DriveE/Projects/Git/dotfiles/
cp /DriveE/Backup/Cygwin/home/Lanaya/.vimrc /DriveE/Projects/Git/dotfiles/.vimrcWin
cp ~/.Xresources /DriveE/Projects/Git/dotfiles/
cp ~/.bashrc /DriveE/Projects/Git/dotfiles/
cp ~/.xsession /DriveE/Projects/Git/dotfiles/
mkdir -p /DriveE/Projects/Git/dotfiles/.config
mkdir -p /DriveE/Projects/Git/dotfiles/.config/mps-youtube/
cp -r ~/.config/mps-youtube/config /DriveE/Projects/Git/dotfiles/.config/mps-youtube/
cp -r ~/.config/i3/ /DriveE/Projects/Git/dotfiles/.config/
cp -r ~/.config/mpv/ /DriveE/Projects/Git/dotfiles/.config/
mkdir -p /DriveE/Projects/Git/dotfiles/.config/BetterDiscord/
cp -r ~/.config/BetterDiscord/themes /DriveE/Projects/Git/dotfiles/.config/BetterDiscord/
cp -r ~/.config/newsboat/ /DriveE/Projects/Git/dotfiles/.config/
rm /DriveE/Projects/Git/dotfiles/.config/newsboat/urls
cp -r ~/.config/alacritty/ /DriveE/Projects/Git/dotfiles/.config/
cp -r ~/.config/zathura /DriveE/Projects/Git/dotfiles/.config/
rm /DriveE/Projects/Git/dotfiles/.config/zathura/zathurarc

cp -r ~/.config/ranger/ /DriveE/Projects/Git/dotfiles/.config
rm /DriveE/Projects/Git/dotfiles/.config/ranger/bookmarks
cp -r ~/.config/terminator/ /DriveE/Projects/Git/dotfiles/.config
cp ~/.config/touchpadrc /DriveE/Projects/Git/dotfiles/.config
cp -r ~/.config/rofi/ /DriveE/Projects/Git/dotfiles/.config
cp -r ~/.config/dunst/ /DriveE/Projects/Git/dotfiles/.config
cp -r ~/.config/vis/ /DriveE/Projects/Git/dotfiles/.config
cp -r ~/.config/compton.conf /DriveE/Projects/Git/dotfiles/.config
rm -r /DriveE/Projects/Git/dotfiles/Script
cp -r ~/Documents/Script /DriveE/Projects/Git/dotfiles
cp -r ~/.ncmpcpp /DriveE/Projects/Git/dotfiles/
cp -r ~/.config/pulse/presets /DriveE/Projects/Git/dotfiles/.config/pulse/
cp -r ~/.config/pulse/default.pa /DriveE/Projects/Git/dotfiles/.config/pulse/default.pa
cp ~/.profile /DriveE/Projects/Git/dotfiles/
cp -r ~/.mplayer/ /DriveE/Projects/Git/dotfiles/
cp ~/.imwheelrc /DriveE/Projects/Git/dotfiles/
mkdir -p /DriveE/Projects/Git/dotfiles/etc/
# cp /etc/issue /DriveE/Projects/Git/dotfiles/etc/
cp /etc/pacman.conf /DriveE/Projects/Git/dotfiles/etc/
mkdir -p /DriveE/Projects/Git/dotfiles/themes/grub-theme
cp -r /boot/grub/themes/* /DriveE/Projects/Git/dotfiles/themes/grub-theme/
# cp ~/.xscreensaver /DriveE/Projects/Git/dotfiles/
cp ~/.rtorrent.rc /DriveE/Projects/Git/dotfiles/
cp ~/.rtorrent.rc /DriveE/Projects/Git/dotfiles/
cp ~/.nvidia-xinitrc /DriveE/Projects/Git/dotfiles/
cp ~/.xinitrc /DriveE/Projects/Git/dotfiles/
# cp ~/.config/mimeapps.list /DriveE/Projects/Git/dotfiles/.config/
cp ~/.zshrc /DriveE/Projects/Git/dotfiles/
cp ~/.zprofile /DriveE/Projects/Git/dotfiles/
cp -r ~/.config/sxiv /DriveE/Projects/Git/dotfiles/.config

mkdir -p /DriveE/Projects/Git/notes/.config/mutt
cp ~/.config/mutt/muttrc /DriveE/Projects/Git/notes/.config/mutt/
mkdir -p /DriveE/Projects/Git/notes/.config/mutt/accounts
cp  ~/.config/mutt/accounts/diwasx.muttrc /DriveE/Projects/Git/notes/.config/mutt/accounts
cp  ~/.config/mutt/accounts/gmail.muttrc /DriveE/Projects/Git/notes/.config/mutt/accounts
mkdir -p /DriveE/Projects/Git/notes/.config/transmission-daemon
cp ~/.config/transmission-daemon/settings.json /DriveE/Projects/Git/notes/.config/transmission-daemon/
cp /etc/sudoers /DriveE/Projects/Git/notes/

echo "Files successfully coppied"

package_list_gen.sh
