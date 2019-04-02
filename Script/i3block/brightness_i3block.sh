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
