#!/bin/bash

# Define the menu
chosen=$(printf " Lock\n󰍃 Logout\n Reboot\n Shutdown" | fuzzel --dmenu -p "Power" -w 20)

case "$chosen" in
  " Lock") hyprlock ;;
  "󰍃 Logout") hyprctl dispatch exit ;;
  " Reboot") reboot ;;
  " Shutdown") poweroff ;;
esac
