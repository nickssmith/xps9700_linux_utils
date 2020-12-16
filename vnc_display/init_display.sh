#!/bin/bash
# starts the virtual display

width="3000"
height="2000"

mode=$(cvt $width $height 60 | grep "Modeline" | cut -d ' ' -f 2 | sed 's/^"\(.*\)"$/\1/')

echo $mode


xrandr --addmode VIRTUAL1 $mode
sleep 3s
echo "add resolution $mode"

xrandr --output VIRTUAL1 --mode $mode --left-of LVDS1
sleep 3s
echo "start display VIRTUAL1 to $mode"

xrandr
sleep 3s
echo ""
