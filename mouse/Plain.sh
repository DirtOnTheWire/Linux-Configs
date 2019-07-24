#!/bin/bash 
 
winid=$(xdotool search "PFgold*" | head -n1) 
while true; do 

	xdotool mousedown --window $winid "1" | echo "RapidFire: Mouse 1 [DOWN]" 
	xdotool mouseup --window $winid "1" | echo "RapidFire: Mouse 1 [UP]" 
	xdotool mousedown --window $winid "3" | echo "RapidFire: Mouse 3 [DOWN]" 
	xdotool mouseup --window $winid "3" | echo "RapidFire: Mouse 3 [UP]" 
	xdotool keydown --window $winid "z" | echo "RapidFire: Z [DOWN]" 
	xdotool keyup --window $winid "z" | echo "RapidFire: Z [UP]" done exit 0 

done 
exit 0