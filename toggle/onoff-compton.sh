#!/bin/bash

Id=`pidof compton`

if [ "$Id" -gt 0 ] 
then
kill $Id
else
#compton -c -r 16 -l -24 -t -12 -G -b && exit
compton
fi