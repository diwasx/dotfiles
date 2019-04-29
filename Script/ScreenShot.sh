#%Y-%m-%d_$wx$h.png
scrot -e 'mv $f /DriveE/Pictures/ScreenShot' && notify-send "Screenshot taken and saved to Picture/Screenshot" -i $HOME/Documents/icons/icons8-screenshot-48.png
