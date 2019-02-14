#!/bin/bash

shopt -s nullglob

WALLPAPER_DIR='/usr/share/wallpapers/user'
WALLPAPERS=($WALLPAPER_DIR/*.jpg)

FILE=${WALLPAPERS[$RANDOM % ${#WALLPAPERS[@]}]}

sed -i -e "s!^background=.*!background=$FILE!" /etc/lightdm/lightdm-gtk-greeter.conf
