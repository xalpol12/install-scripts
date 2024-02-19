#!/usr/bin/env bash

# placement:
#
# HDMI-1 
# ______
#
# eDP-1

# eDP-1 - laptop main display with high dpi 
    # - scale 1x with 144 dpi, res: 1920x1080
  
# HDMI-1 - external monitor with lower dpi 
    # - zoom out 1.3x
    # - res: 1920x1080, scaled: 2496x1404

# total screen size: 4476x2484

xrandr --dpi 144 --fb 4476x2484 \
    --output eDP-1 --scale 1x1 --mode 1920x1080 --primary --pos 0x1404 \
    --output HDMI-1 --scale 1.3x1.3 --mode 1920x1080 --pos 0x0
