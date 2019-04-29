ps cax | grep Wall_wal.sh > /dev/null
if [ $? -ne 0 ]; then
    while true; do
        folder="/DriveE/Pictures/Wallpapers/Collection"
        file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

        #Transition Effect
        convert $file -fill black -colorize 50% /tmp/wal1.jpg
        convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
        feh --bg-fill /tmp/wal2.jpg
        feh --bg-fill /tmp/wal1.jpg

        wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
        sleep 3600
    done
else
    folder="/DriveE/Pictures/Wallpapers/Collection"
    file=`find $folder |shuf -n1`   #'find' generates full path and 'shuf' shuffles

    #Transition Effect
    convert $file -fill black -colorize 50% /tmp/wal1.jpg
    convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
    feh --bg-fill /tmp/wal2.jpg
    feh --bg-fill /tmp/wal1.jpg

    wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
fi

