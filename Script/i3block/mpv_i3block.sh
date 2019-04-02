#Script that finds mpsyt (mpv) title running in background

# ps aux | grep mpv | sed 's/.*title \(.*\)--no.*/\1/'
ps aux | grep "[m]pv --title"| sed 's/.*title \(.*\)--no.*/\1/'
# [m] for searching regix, because ps display echo process itself
# \1 is a 'Remember pattern' that remembers everything that is within \(.*\) 
# .*xyz --> represent starting of string

