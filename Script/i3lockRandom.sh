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
i3lock_cmd=(i3lock -i /tmp/temp.png -t -e -k --time-pos="0+30:h-110" --date-pos="0+30:h-50" time-font="Comic Sans MS" --date-font="Comic Sans MS" --time-size=54 --date-size=30 --ind-pos="w-100:h-90" --time-align=1 --date-align=1 --wrong-size=20 --radius=40 -n )

value="60"
color=$(convert "$file" -gravity SouthEast -crop 100x100+0+0 +repage -colorspace hsb \
    -resize 1x1 txt:- | awk -F '[%$]' 'NR==2{gsub(",",""); printf "%.0f\n", $(NF-1)}');
if [[ $color -gt $value ]]; then 
# If black background image and use white text
    param=("--inside-color=0000001c" "--ring-color=0000003e" \
        "--line-color=00000000" "--keyhl-color=ffffff80" "--ringver-color=ffffff00" \
        "--separator-color=22222260" "--insidever-color=ffffff1c" \
        "--ringwrong-color=ffffff55" "--insidewrong-color=ffffff1c" \
        "--verif-color=ffffff00" "--wrong-color=000000ff" "--time-color=000000ff" \
        "--date-color=000000ff" "--layout-color=ffffff00")
else 
# If white background image and use black text
    bw="white"
    icon="$HOME/Documents/icons/i3lock/lock.png"
    param=("--inside-color=ffffff1c" "--ring-color=ffffff3e" \
        "--line-color=ffffff00" "--keyhl-color=00000080" "--ringver-color=00000000" \
        "--separator-color=22222260" "--insidever-color=0000001c" \
        "--ringwrong-color=00000055" "--insidewrong-color=0000001c" \
        "--verif-color=00000000" "--wrong-color=ffffffff" "--time-color=ffffffff" \
        "--date-color=ffffffff" "--layout-color=00000000")
fi

# Turn off screen after inactivity of given seconds
xset dpms 5 0 0

# Lock command in execution
"${i3lock_cmd[@]}" "${param[@]}"

# Turn off blanking after unlock
xset dpms 480 0 0
