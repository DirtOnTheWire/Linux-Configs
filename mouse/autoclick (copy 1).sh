#!/bin/bash

Id=1



MOUSE_ID=$(xinput --list | grep -i -m 1 'mouse' | grep -o 'id=[0-9]\+' | grep -o '[0-9]\+')
echo $MOUSE_ID

STATE1=$(xinput --query-state $MOUSE_ID | grep 'button\[' | sort)
while true; do
    sleep 0.2
    STATE2=$(xinput --query-state $MOUSE_ID | grep 'button\[' | sort)
    comm -13 <(echo "$STATE1") <(echo "$STATE2")
    STATE1=$STATE2
done


while [ "50" -gt "$Id" ]; do
#xdotool click 1

#xdotool mousedown 1
sleep 0.01
xdotool mouseup 1
echo "click"
#Id++

sleep 0.01
done



#xdotool click --delay 5000 --repeat 100000 1 # (assuming the mouse is left where it needs to click).