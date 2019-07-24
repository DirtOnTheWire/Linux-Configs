#!/bin/bash

#Id=1



MOUSE_ID=$(xinput --list | grep -i -m 1 'mouse' | grep -o 'id=[0-9]\+' | grep -o '[0-9]\+')
echo $MOUSE_ID
while true; do
echo $MOUSE_ID
#STATE1=();
STATE1=($(xinput --query-state $MOUSE_ID | grep 'button\[2' | rev | cut -d"=" -f1  | rev | sort))
#STATE1=$(xinput --query-state $MOUSE_ID | grep 'button\[')
#STATE1=('up' 'up' 'up' 'down')
#mouse1=${STATE1[1]}
#echo $mouse1
echo ${STATE1[0]}
#while true; do
#    sleep 0.2
#    STATE2=$(xinput --query-state $MOUSE_ID | grep 'button\[' | sort)
#    comm -13 <(echo "$STATE1") <(echo "$STATE2")
#    STATE1=$STATE2
#done


#while $mouse1 == "down"; do
if [ "${STATE1[0]}" = "down" ]
then
#xdotool click 1

#echo "jkldsakjldsjalkdsajkldsa" # ${STATE1[0]}


#if [[ $t < 1 ]]; then
xdotool mousedown 1
#xdotool key f
#xdotool keydown Pointer_Button1
sleep 0.015
xdotool mouseup 1
#xdotool keyup Pointer_Button1
#xdotool keyup Shift_L
echo "click"
#Id++
#t+=1
#sleep 0.01
#fi
#=0
fi

sleep 0.015
done



#xdotool click --delay 5000 --repeat 100000 1 # (assuming the mouse is left where it needs to click).