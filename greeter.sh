#!/bin/bash

shopt -s nullglob

WALLPAPER_DIR='/home/yokley/Pictures/wallpapers'
WALLPAPERS=($WALLPAPER_DIR/*.jpg)

FILE=${WALLPAPERS[$RANDOM % ${#WALLPAPERS[@]}]}

sed -i -e "s!background=.*!background=$FILE!" /etc/lightdm/slick-greeter.conf
