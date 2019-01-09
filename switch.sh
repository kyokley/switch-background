#!/bin/bash

shopt -s nullglob

WALLPAPER_DIR='/home/yokley/Pictures/wallpapers'
WALLPAPERS=($WALLPAPER_DIR/*.jpg)

FILE=${WALLPAPERS[$RANDOM % ${#WALLPAPERS[@]}]}

nitrogen --save --set-scaled "$FILE"
