#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Scripts for refreshing ags waybar, rofi, swaync, wallust

SCRIPTSDIR=$HOME/.config/hypr/scripts

# Define file_exists function
file_exists() {
    if [ -e "$1" ]; then
        return 0  # File exists
    else
        return 1  # File does not exist
    fi
}

#Restart waybar
pkill waybar
waybar

# refresh kando
kando --reload-menu-theme

# relaunch swaync
sleep 0.5
swaync > /dev/null 2>&1 &

exit 0
