#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/media/wallpaper/"

# Pick a random wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

if [ -z "$WALLPAPER" ]; then
    echo "Error: No wallpaper found in $WALLPAPER_DIR"
    exit 1
fi

sleep 1

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

hyprctl hyprpaper unload all

echo "Wallpaper set to: $WALLPAPER"
