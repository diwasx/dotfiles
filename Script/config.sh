#!/bin/bash
main=~/Documents/Git/dotfiles
note=~/Documents/Git/notes
cp ~/.vimrc $main/
cp ~/.linopenrc $main/
cp ~/.gitconfig $main/
cp ~/.Xresources $main/
cp ~/.bashrc $main/
cp ~/.xsession $main/
mkdir -p $main/.config
mkdir -p $main/.config/mps-youtube/
cp -r ~/.config/mps-youtube/config $main/.config/mps-youtube/
cp -r ~/.config/i3/ $main/.config/
cp -r ~/.config/mpv/ $main/.config/
mkdir -p $main/.config/BetterDiscord/
cp -r ~/.config/BetterDiscord/themes $main/.config/BetterDiscord/
cp -r ~/.config/newsboat/ $main/.config/
rm $main/.config/newsboat/urls
cp -r ~/.config/alacritty/ $main/.config/
cp -r ~/.config/zathura $main/.config/
rm $main/.config/zathura/zathurarc

cp -r ~/.config/ranger/ $main/.config
rm $main/.config/ranger/bookmarks
cp -r ~/.config/terminator/ $main/.config
cp ~/.config/touchpadrc $main/.config
cp -r ~/.config/rofi/ $main/.config
cp -r ~/.config/dunst/ $main/.config
cp -r ~/.config/vis/ $main/.config
cp -r ~/.config/picom/ $main/.config
rm -r $main/Script
cp -r ~/Documents/Script $main
cp -r ~/.ncmpcpp $main/
cp -r ~/.config/pulse/presets $main/.config/pulse/
cp -r ~/.config/pulse/default.pa $main/.config/pulse/default.pa
cp ~/.profile $main/
cp -r ~/.mplayer/ $main/
cp ~/.imwheelrc $main/
mkdir -p $main/etc/
# cp /etc/issue $main/etc/
cp /etc/pacman.conf $main/etc/
mkdir -p $main/themes/grub-theme
cp -r /boot/grub/themes/* $main/themes/grub-theme/
# cp ~/.xscreensaver $main/
cp ~/.rtorrent.rc $main/
cp ~/.rtorrent.rc $main/
cp ~/.nvidia-xinitrc $main/
cp ~/.xinitrc $main/
# cp ~/.config/mimeapps.list $main/.config/
cp ~/.zshrc $main/
cp ~/.zprofile $main/
cp -r ~/.config/sxiv $main/.config
cp -r ~/.config/tmux/ $main/.config/

### Notes
mkdir -p $note/.config/mutt
cp ~/.config/mutt/muttrc $note/.config/mutt/
mkdir -p $note/.config/mutt/accounts
cp  ~/.config/mutt/accounts/diwasx.muttrc $note/.config/mutt/accounts
cp  ~/.config/mutt/accounts/gmail.muttrc $note/.config/mutt/accounts
mkdir -p $note/.config/transmission-daemon
cp ~/.config/transmission-daemon/settings.json $note/.config/transmission-daemon/
cp /etc/sudoers $note/

echo "Files successfully coppied"

package_list_gen.sh
