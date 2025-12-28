#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/media/wallpaper/"

# Pick any random wallpaper (no exclusion)
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"

