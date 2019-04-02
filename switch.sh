#!/bin/bash

shopt -s nullglob

WALLPAPER_DIR='/home/yokley/Pictures/wallpapers'

NUM_DISPLAYS=$(xrandr | grep connected -w | wc -l)

for i in $(seq 0 $(expr $NUM_DISPLAYS - 1))
do
    nitrogen --head=$i --random --save --set-scaled "$WALLPAPER_DIR"
done
