#!/usr/bin/expect -f
set lanaya "ellie"
spawn sudo bash -c nm-applet &
expect "anaya:"
send "$lanaya\r"
interact
