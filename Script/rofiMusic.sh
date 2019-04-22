#!/bin/sh

# Launch Rofi with option 
cmd=$(echo -e "mpsyt \nmpsyt channels \nmpsyt playurl \nmpv " | rofi -dmenu -p Music)

# If mpsyt is selected
if (echo $cmd | grep -v playurl | grep -v channels | grep -e mpsyt); then #GREP to find if 'mpsyt' is present but not 'playurl' or 'channels'
    cmd=`echo $cmd | cut -d' ' -f2- ` #Delete first word
    cmd="mpsyt /$cmd"
    urxvt -name mpsyt -e $cmd  #These name and title are for i3 scratchpad
fi

# If 'mpsyt playurl' is selected
if (echo $cmd | grep -e playurl);then

    # If no argument is send use buffer url
    if [ "$cmd" = "mpsyt playurl " ]; then
        cmd="mpsyt playurl "`xsel -b | head -n 1`
    fi

    urxvt -name mpsyt -e $cmd 
fi

# If 'mpsyt channels' is selected
if (echo $cmd | grep -e channels);then
    urxvt -name mpsyt -e $cmd 
fi

# If 'mpv' is selected
if (echo $cmd | grep -e mpv);then

    # If no argument is send use buffer url
    if [ "$cmd" = "mpv " ]; then
        cmd="mpv "`xsel -b | head -n 1`
    fi

    mpv --title floatingMpv $cmd 
fi
