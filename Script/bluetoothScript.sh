#!/bin/bash
sudo systemctl start bluetooth 
sleep 5
blueman-applet&
sleep 12

# Set ladspa on bluetooth speaker
bluetooth_ladspa.sh
