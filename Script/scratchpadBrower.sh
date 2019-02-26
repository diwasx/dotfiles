#!/bin/sh

if i3-msg "[title="Chromium"] scratchpad show" | grep -q 'ERROR' 
then
    echo "Check for other browers"
else
    i3-msg [instance=google-chrome] scratchpad show
fi
