/home/lanaya/Documents/Script/startupBatteryCheck.sh
export WINEDEBUG=fps

if [ $@ -eq 1 ] 
    echo "/DriveE/Pictures/Wallpapers/Collection/" > /tmp/wall-path
    echo "startupLogo.sh" > /tmp/logo
    exec i3
elif [ $@ -eq 2 ] 
    echo "/DriveE/Pictures/Wallpapers/work_hour/" > /tmp/wall-path
    echo "startupAscii.sh" > /tmp/logo
    exec i3
fi
