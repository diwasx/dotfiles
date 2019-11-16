#!/bin/sh

# Selecting random file
# folder="/DriveE/Pictures/Wallpapers/Collection"
# folder=`cat /tmp/wall-path`
folder=$WALL_PATH
file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

# i3lock only support .png file
convert $file -resize 1920x1080^ -gravity center /tmp/temp.png

# Add blur-extend effect on images with un-equal ratio
# convert $file \
#        \( -clone 0 -blur 0x5 -resize 1920x1080\! -fill white -colorize 20% \) \
#        \( -clone 0 -resize 1920x1080 \) \
#        -delete 0 -gravity center -composite \
#        /tmp/temp.png


# "-n" is important, as it  doesnt allow i3lock to create child processes, so we can run script after it's been unlock
i3lock_cmd=(i3lock -i /tmp/temp.png -e -k --timepos="0+30:h-110" --datepos="0+30:h-50" time-font="Comic Sans MS" --date-font="Comic Sans MS" --timesize=54 --datesize=30 --indpos="w-100:h-90" --time-align=1 --date-align=1 --wrongsize=20 --radius=40 -n )

value="60"
color=$(convert "$file" -gravity SouthEast -crop 100x100+0+0 +repage -colorspace hsb \
    -resize 1x1 txt:- | awk -F '[%$]' 'NR==2{gsub(",",""); printf "%.0f\n", $(NF-1)}');
if [[ $color -gt $value ]]; then 
# If black background image and use white text
    param=("--insidecolor=0000001c" "--ringcolor=0000003e" \
        "--linecolor=00000000" "--keyhlcolor=ffffff80" "--ringvercolor=ffffff00" \
        "--separatorcolor=22222260" "--insidevercolor=ffffff1c" \
        "--ringwrongcolor=ffffff55" "--insidewrongcolor=ffffff1c" \
        "--verifcolor=ffffff00" "--wrongcolor=000000ff" "--timecolor=000000ff" \
        "--datecolor=000000ff" "--layoutcolor=ffffff00")
else 
# If white background image and use black text
    bw="white"
    icon="$HOME/Documents/icons/i3lock/lock.png"
    param=("--insidecolor=ffffff1c" "--ringcolor=ffffff3e" \
        "--linecolor=ffffff00" "--keyhlcolor=00000080" "--ringvercolor=00000000" \
        "--separatorcolor=22222260" "--insidevercolor=0000001c" \
        "--ringwrongcolor=00000055" "--insidewrongcolor=0000001c" \
        "--verifcolor=00000000" "--wrongcolor=ffffffff" "--timecolor=ffffffff" \
        "--datecolor=ffffffff" "--layoutcolor=00000000")
fi

# Turn off screen after inactivity of given seconds
xset dpms 5 0 0

# Lock command in execution
"${i3lock_cmd[@]}" "${param[@]}"

# Turn off blanking after unlock
xset dpms 480 0 0
