#!/usr/bin/env bash

# Check if root
if [[ $(id -u) -ne 0 ]]; then
	echo "Install script requires root permission"
	exit 1
fi

# TODO: USE XDG_CONFIG_HOME IF IT EXISTS

# Remember current directory
START_DIR=$PWD

# TODO: Sync packages and make sure commands successfully execute
# Tools to install
pacman -S hyprpaper hyprpicker hyprcursor hypridle hyprlock hyprpaper hyprland-qtutils hyprpolkitagent hyprsunset sddm waybar brightnessctl pavucontrol playerctl xdg-desktop-portal-hyprland fastfetch ttf-martian-mono-nerd btop git ripgrep fzf wl-clipboard nvim rofi-wayland rfkill

# TODO: Check for XDG_CONFIG_HOME, use HOME as default

# TODO: Hyprland configuration

# Create configuration directories
mkdir -p $HOME/.config/hypr/themes
mkdir -p $HOME/.config/hypr/scripts/
mkdir -p $HOME/Wallpapers

# TODO: Download themes (perhaps make submodule??)
git clone git@github.com:catppuccin/hyprland.git
cp -r hyprland/themes/ $HOME/.config/hypr/themes/
rm -rf hyprland/
# TODO: Download wallpapers and other assets

# TODO: Waybar configuration
#git clone git@github.com:catppuccin/waybar.git

# TODO: Rofi configuration

# Navigate back
cd $START_DIR

# Load hypr configuration
hyprctl reload
