
ps cax | grep redshift > /dev/null
if [ $? -eq 0 ]
then
    killall redshift
    notify-send "Redshift Stopped"
else
    redshift&
    notify-send -u critical "$(cat ~/.config/redshift.conf | head -n 5)"
fi
