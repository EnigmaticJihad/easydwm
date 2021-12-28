#!/bin/sh

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

case "$(echo -e "PowerOff\nReboot\nLogout\nSuspend\nLock" | dmenu \
  -nb "$color0" \
  -nf "$color15" \
  -sb "$color1" \
  -sf "$color15" \
  -i -p \
  "Power:")" in
      PowerOff) exec systemctl poweroff;;
      Reboot) exec systemctl reboot;;
      Logout) exec pkill dwm;;
      Suspend) exec systemctl suspend;;
      Lock) exec slock;;
esac
