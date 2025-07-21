#!/bin/bash
#######################################
# DESCRIPTION: Toggles Touchpad ON/OFF
# DATE: Updated for Kubuntu 24.04
# AUTHOR: ssnjara (updated)
#######################################

# Find touchpad device ID
touchpad_id=$(xinput list | grep -i touchpad | grep -o 'id=[0-9]*' | cut -d= -f2)

if [ -z "$touchpad_id" ]; then
    notify-send -i dialog-error "Touchpad not found!"
    exit 1
fi

# Check if touchpad is enabled (1) or disabled (0)
enabled=$(xinput list-props "$touchpad_id" | grep "Device Enabled" | grep -o '[01]$')

if [ "$enabled" -eq 1 ]; then
    # Touchpad is enabled, disable it
    xinput disable "$touchpad_id"
    notify-send -i dialog-error "Touchpad disabled!"
else
    # Touchpad is disabled, enable it
    xinput enable "$touchpad_id"
    notify-send -i dialog-information "Touchpad enabled!"
fi
