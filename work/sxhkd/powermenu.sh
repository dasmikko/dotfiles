#!/bin/zsh

selected=$(echo "Suspend
Logoff
Reboot
Shutdown" | rofi -dmenu -lines 4 -no-custom -window-title "What to do?")

case $selected in
  Suspend)
    systemctl suspend
    ;;
  Logoff)
    bspc quit
    ;;
  Reboot)
    reboot
    ;;
  Shutdown)
    shutdown -h now
    ;;
esac