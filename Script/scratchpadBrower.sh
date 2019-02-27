#!/bin/sh

i3-msg "[title="Chromium"] scratchpad show" | grep -q 'true' > /dev/null #Hiding terminal result because getting status code is enough
if [ $? == 0 ]
then
    echo "Found Chromium"
else
    echo "Looking for other brower"
    i3-msg [instance="google-chrome"] scratchpad show > /dev/null
    # i3-msg [class="Firefox"] scratchpad show
fi
