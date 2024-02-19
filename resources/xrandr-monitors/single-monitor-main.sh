#!/usr/bin/env bash

# placement:
# eDP-1

# eDP-1 - laptop main display with high dpi 
    # - scale 1x with 144 dpi, res: 1920x1080

xrandr --dpi 144 --fb 1920x1080 \
    --output eDP-1 --scale 1x1 --mode 1920x1080 --primary --pos 0x0
