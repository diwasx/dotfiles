#!/usr/bin/bash
#
# Script to notify user for new mails.

#run OfflineIMAP once, with quiet interface
offlineimap -o -q -u quiet

#count new mail for every maildir
# maildirnew="$HOME/Maildir/*/*/new/"
maildirnew="$HOME/.mail/diwasx/Inbox/new/"
new="$(find $maildirnew -type f | wc -l)"

#count old mail for every maildir
# maildirold="$HOME/Maildir/*/*/cur/"
maildirnew="$HOME/.mail/diwasx/Inbox/cur/"
old="$(find $maildirold -type f | wc -l)"

if [ $new -gt 0 ]
then
    export DISPLAY=:0; export XAUTHORITY=~/.Xauthority;
    # notify-send -a "OfflineIMAP" "New mail!\nNew: $new Old: $old"
    notify-send -a "OfflineIMAP" "New mail! New: $new" 
fi
