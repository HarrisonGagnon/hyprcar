#!/usr/bin/env bash

# TODO: Update for hyprcar
#notif="$HOME/.config/swaync/images/ja.png"
#
## Check if any wireless device is blocked
#wifi_blocked=$(rfkill list wifi | grep -o "Soft blocked: yes")
#
#if [ -n "$wifi_blocked" ]; then
#    rfkill unblock wifi
#    notify-send -u low -i "$notif" " Airplane" " mode: OFF"
#else
#    rfkill block wifi
#    notify-send -u low -i "$notif" " Airplane" " mode: ON"
#fi
