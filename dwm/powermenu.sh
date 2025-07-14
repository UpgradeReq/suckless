#!/bin/bash

choice=$(echo -e "Shutdown\nReboot\nLock\nLogout" | dmenu -i -p "Power Menu")

# Execute actions based on choice
case "$choice" in
    "Shutdown") loginctl poweroff ;;
    "Reboot") loginctl reboot ;;
    "Lock") slock ;;
    "Logout") loginctl terminate-user $USER ;;
    *) exit 1 ;;
esac
