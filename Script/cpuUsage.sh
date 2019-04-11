#!/bin/bash

crit=80;
warn=45;
cpu=`top -bn1 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print 100 - $1}'`
# echo $cpu
# echo $crit
cpu=`printf "%0.1f\n" $cpu`

if (( $(echo "$cpu >= $crit" |bc -l) )); then
    echo -e "<span color='black' bgcolor='red'>CPU: $cpu%</span>\n"
elif (( $(echo "$cpu >= $warn" |bc -l) )); then
    echo -e "<span color='black' bgcolor='#f49d1a'>CPU: $cpu%</span>\n"
else
    echo -e "<span color='white'>CPU: $cpu%</span>\n"
fi
