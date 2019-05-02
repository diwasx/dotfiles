#!/bin/sh
#Startup script that checks if power supply is connected or not

acpi battery | grep Discharging > /dev/null
if [ $? -eq 0 ]; then
    # echo Discharging
    light -S 70
else 
    # echo Charging
    light -S 100
fi

# exec pkill -RTMIN+16 i3blocks 
  
