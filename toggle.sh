#!/bin/bash
#######################################
# DESCRIPTION: Toggles Touchpad ON/OFF
# DATE: 15.4.2011
# AUTHOR: ssnjara
#######################################
# Check if Touchpad is ON and set "var" acording
var=`synclient | grep TouchpadOff | cut -d\= -f2`
# if ON turn OFF, else turn ON
if [ $var -eq 0 ]
then
synclient TouchpadOff=1
notify-send -i dialog-error "Touchpad disabled!"
else
synclient TouchpadOFF=0
notify-send -i dialog-information "Touchpad enabled!"
fi
#END
