#%Y-%m-%d_$wx$h.png
timestamp=$(date +%s)
echo $timestamp
# scrot -e "mv $f /DriveE/Pictures/screenShot_${timestamp}.png" && notify-send "Screenshot taken and saved to Picture/Screenshot" -i $HOME/Documents/icons/icons8-screenshot-48.png
scrot -e 'mv $f /DriveE/Pictures/' && notify-send "Screenshot taken and saved to Picture/Screenshot" -i $HOME/Documents/icons/icons8-screenshot-48.png
