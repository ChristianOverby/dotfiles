#!/bin/sh

if xrandr | grep "HDMI-0 connected" >/dev/null; then
    xrandr \
        --output DP-0 --primary --mode 3440x1440 --rate 144 --pos 0x0 \
        --output HDMI-0 --mode 1920x1080 --pos 3440x360
else
    xrandr \
        --output DP-0 --primary --mode 3440x1440 --rate 144 --pos 0x0
fi
