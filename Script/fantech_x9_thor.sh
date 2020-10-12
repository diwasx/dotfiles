#/bin/bash
# PROBLEM IN THIS SCRIPT

# GETTING ID OF MOUSE
Mouse=`xinput list |grep -i 'USB GAMING MOUSE' | awk -F= '{ print $2}'| awk '{print $1}'| awk 'BEGIN{ RS = "" ; FS = "\n" }{print $1}'`


# xinput set-prop [Device] "Coordinate Transformation Matrix" [X-acceleration] 0 0 0 [Y-acceleration] 0 0 0 [Sensitivity]
# xinput set-prop $Mouse "Coordinate Transformation Matrix" .6 0 0 0 .6 0 0 0 2.5
# xinput set-prop $Mouse "Coordinate Transformation Matrix" .6 0 0 0 .6 0 0 0 .8
# xinput set-prop $Mouse "Coordinate Transformation Matrix" .8 0 0 0 .8 0 0 0 .7

xinput set-prop $Mouse "libinput Accel Speed" .3
