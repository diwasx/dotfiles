#!/bin/sh

#Output brightness in percentage
max='/sys/class/backlight/intel_backlight/max_brightness'
actual='/sys/class/backlight/intel_backlight/brightness'
max=`cat $max`
actual=`cat $actual`
# echo $max
# echo $actual
percent=`echo "scale=3; $actual/$max*100" | bc` #Number calculation using bc
percent=${percent%.*}  #Remove decimal value
echo $percent%

# Mouse interaction in i3blocks
case $BLOCK_BUTTON in
  4) light -A 5 ;;# scroll up, increase
  5) light -U 5 ;;# scroll down, increase
esac
