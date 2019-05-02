ps cax | grep blurwal > /dev/null
if [ $? -ne 0 ]
then
    blurwal -b 4
else
    # echo "Blurwal already running"
    notify-send "Blurwal already running" -i $HOME/Documents/icons/icons8-close-window-filled-48.png
fi

