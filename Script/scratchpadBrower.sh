#!/bin/sh

if i3-msg "[title="Chromium"] scratchpad show" | grep -q 'ERROR' 
then
    echo "Check for firefox"
else
    i3-msg [instance=google-chrome] scratchpad show
fi
