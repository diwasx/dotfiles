#!/bin/bash
# This wallpaper script uses "Unsplash api (https://unsplash.com)" for generating random wallpaper for desktop and lock screen based on specified resolution and keywords

pkill -f "Wall_wal.sh"
pkill -f "Wall_wal_work_hour.sh"

resolution="2560x1440"
# resolution="1920x1080"
keyword="wallpapers-hd"

file="/tmp/wall_url"
notify-send "Downloading and Setting Random Wallpaper" -i $HOME/Documents/icons/icons8-panorama-48.png

# url="https://source.unsplash.com/1600x900/?nature,water"
url="https://source.unsplash.com/"$resolution"?"$keyword
wget $url -O $file

if [ $? -ne 4 ]; then
    if [ $1 == "desktop" ]; then
            # Transition Effect
            convert $file -fill black -colorize 50% /tmp/wal1.jpg
            convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
            feh --bg-fill /tmp/wal2.jpg
            feh --bg-fill /tmp/wal1.jpg

            wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
    elif [ $1 == "lock" ]; then
        i3lock_cmd=(i3lock -i $file -e -k --timepos="0+30:h-110" --datepos="0+30:h-50" time-font="Comic Sans MS" --date-font="Comic Sans MS" --timesize=54 --datesize=30 --indpos="w-100:h-90" --time-align=1 --date-align=1 --wrongsize=20 --radius=40 -n )

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
    fi

else
    notify-send "No Internet Connection or" \
       "Keyword/resolution is not valid" -i $HOME/Documents/icons/icons8-close-window-filled-48.png
fi
