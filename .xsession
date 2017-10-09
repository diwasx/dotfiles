#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

[[ -f ~/.extend.xsession ]] && . ~/.extend.xsession

if lsusb --verbose 2>&1 | grep --quiet "Mouse"; then
        synclient TouchPadOff="1"
    fi
