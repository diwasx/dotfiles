#!/bin/sh

# Launch Rofi with option 
cmd=$(echo -e "mpsyt \nmpsyt playurl \nmpv " | rofi -dmenu -p Music)

# If mpsyt is selected
if (echo $cmd | grep -v playurl | grep -e mpsyt); then #GREP to find if 'mpsyt' is present but 'playurl' not
    cmd=`echo $cmd | cut -d' ' -f2- `
    cmd="mpsyt /$cmd"
    urxvt -name mpsyt -e $cmd  #These name and title are for i3 scratchpad
fi

# If 'mpsyt playurl' is selected
if (echo $cmd | grep -e playurl);then
    urxvt -name mpsyt -e $cmd 
fi

# If 'mpv' is selected
if (echo $cmd | grep -e mpv);then
    mpv --title floatingMpv $cmd 
fi
