#!/bin/sh

# cat /proc/acpi/bbswitch | grep -o ON
txt=`cat /proc/acpi/bbswitch | grep -o ON`
if [[ $txt -eq "ON" ]]; then
    txt1=`$HOME/Documents/Script/i3block/gpu-load`
    # echo $txt-$txt1
    echo $txt1
fi
