#Script that finds mpsyt (mpv) title running in background

# ps aux | grep "[m]pv --title"| sed 's/.*title \(.*\)--no.*/\1/'

title=`ps aux | grep "[m]pv --title" | sed '/floatingMpv/d'` #Delete line that contain "floatingMpv"
title=`echo $title | sed 's/.*title \(.*\)--no.*/\1/'`  #Extract song title
echo $title

# [m] for searching regix, because ps display echo process itself
# \1 is a 'Remember pattern' that remembers everything that is within \(.*\) 
# .*xyz --> represent starting of string

pkill -RTMIN+13 i3blocks;   #Signal to i3block to update song
