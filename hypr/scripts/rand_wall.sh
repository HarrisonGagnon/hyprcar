#!/usr/bin/env bash

while true; do
	# Lazily avoid startup race condition
	sleep 1
	
	WALLPAPER_DIR="$HOME/Wallpapers/"
	CURRENT_WALL=$(hyprctl hyprpaper listloaded)
	
	# Get a random wallpaper that is not the current one
	WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)
	
	# Apply the selected wallpaper
	hyprctl hyprpaper reload ,"$WALLPAPER"

	# Create symbolic link to current wallpaper
	ln -f $WALLPAPER $WALLPAPER_DIR/current

	sleep 12
done
