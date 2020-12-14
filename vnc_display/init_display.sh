#!/bin/bash
# starts the virtual display

width="3000"
height="2000"
vscreen="$width""x""$height"

xrandr --addmode VIRTUAL1 $vscreen
sleep 3s
echo "add resolution $vscreen"

xrandr --output VIRTUAL1 --mode $vscreen --left-of LVDS1
sleep 3s
echo "start display VIRTUAL1 to $vscreen"

xrandr
sleep 3s
echo ""
echo "Done, Check your VDL Monitor on System Setting > Display"