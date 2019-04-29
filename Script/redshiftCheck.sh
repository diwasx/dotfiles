
ps cax | grep redshift > /dev/null
if [ $? -eq 0 ]
then
    killall redshift
    notify-send "Redshift Stopped" -i $HOME/Documents/icons/icons8-fog-48.png
else
    redshift&
    notify-send -u normal "$(cat ~/.config/redshift.conf | head -n 5)" -i $HOME/Documents/icons/icons8-fog-48.png
fi
