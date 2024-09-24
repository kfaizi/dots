#!/bin/bash

# by default, when switching workplaces in sway, the focus remains on whichever window had it last.
# when coupled with focus-follows-mouse, this is confusing, since the mouse won't necessarily be on said window.
# this script fixes that behavior by sending a quick mouse location update to sway.
# it should be executed every time the workspace is changed in your swayconfig.
# this allows focus to update in the expected manner, without the need to jiggle the mouse.

swaymsg -t send_tick

# get the current output name
#output_name=$(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name')

# get the 
# Move the mouse to a specific pixel on the selected output
# swaymsg input "cursor $output_name warp 1 1"

# Optionally, you can add a small delay to ensure the mouse position update is registered
# sleep 0.1

# Move the mouse back to the center of the output (optional)
# swaymsg input "cursor $output_name warp 1920 1080"



