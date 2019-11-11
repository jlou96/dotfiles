#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ORIGINAL_WALLPAPER=~/Pictures/kimi-no-na-wa/meteorite-split.png
BLURRED_WALLPAPER=$DIR/blurred.png

if [ ! -f $BLURRED_WALLPAPER ]
then
    convert $ORIGINAL_WALLPAPER -blur 0x5 $BLURRED_WALLPAPER
fi

i3lock --image=$BLURRED_WALLPAPER --tiling

