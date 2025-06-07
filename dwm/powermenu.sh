#!/bin/bash

choice=$(echo -e "Shutdown\nReboot\nSleep\nLock\nLogout" | dmenu -i -p "Power Menu")

# Execute actions based on choice
case "$choice" in
    "Shutdown") systemctl poweroff ;;
    "Reboot") systemctl reboot ;;
    "Sleep") systemctl suspend ;;
    "Lock") slock ;;
    "Logout") loginctl terminate-user $USER ;;
    *) exit 1 ;;
esac
