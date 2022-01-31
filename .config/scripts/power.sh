#!/bin/sh

# Import Colorscheme
. "${HOME}/.cache/wal/colors.sh"

cmds="\
 PowerOff	systemctl poweroff
ﰇ Reboot	systemctl reboot
 Logout	pkill dwm
⏾ Suspend	systemctl suspend
 Lock		slock"

choice="$(echo "$cmds" | cut -d'	' -f 1 | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -p "Power Menu: ")" || exit 1

`echo "$cmds" | grep "^$choice	" | cut -d '	' -f2-`
