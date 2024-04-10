#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
MONITOR=DP-4 polybar --reload mybar &
MONITOR=HDMI-0 polybar --reload secondary &

echo "Polybar launched..." 
