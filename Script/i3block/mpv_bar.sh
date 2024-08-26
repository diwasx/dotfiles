# Script that finds mpsyt (mpv) title running in background

# ps aux | grep "[m]pv --title"| sed 's/.*title \(.*\)--no.*/\1/'

# Get only command of process, filter one with mpv, isolate with 'title', 'list' ,'-wid' and 'version' and remove last slash and then dot
ps ax --sort=start_time |awk -v p='COMMAND' 'NR==1 {n=index($0, p); next} {print substr($0, n)}' | grep "^[m]pv" | grep -v "\--title" |grep -v "\--list" |grep -v "\--version" |grep -v "\-wid"| sed 's/.*\///; s/\.[^.]*$//' | tail -n1

echo $title
# notify-send "$title" -i $HOME/Documents/icons/icons8-musical-48.png
pkill -RTMIN+9 i3blocks;   #Signal to i3block to update song

case $BLOCK_BUTTON in
  1) mpc toggle;;
  4) mpc next;;
  5) mpc prev;;
esac
