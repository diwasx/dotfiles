#!/bin/sh

# Output brightness in percentage
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
  4) light -A 10 && pkill -RTMIN+16 i3blocks ;;# scroll up, increase
  5) light -U 10 && pkill -RTMIN+16 i3blocks ;;# scroll down, increase
  # 4) xbacklight -inc 10 && exec pkill -RTMIN+16 i3blocks;;
  # 5) xbacklight -dec 10 && exec pkill -RTMIN+16 i3blocks;;
esac
