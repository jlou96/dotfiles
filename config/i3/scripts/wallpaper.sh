#!/bin/bash

WALL=$(find "${HOME}/Pictures/wallpaper/knnw" -type f | sort -R | tail -1)

# if wallpaper intends to cover multiple displays, use option --no-xinerama
feh --no-fehbg --bg-scale "$WALL"

