#!/bin/sh

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

case "$(printf "a selected area\\ncurrent window\\nfull screen" | dmenu -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" -l 3 -i -p "Screenshot which area?")" in
	"a selected area") maim -s ~/Pictures/screenshots/screenshot-selected-"$(date '+%y%m%d-%H%M-%S').png" ;;
	"current window") maim -i "$(xdotool getactivewindow)" ~/Pictures/screenshots/screenshot-window-"$(date '+%y%m%d-%H%M-%S').png" ;;
	"full screen") maim ~/Pictures/screenshots/screenshot-full-"$(date '+%y%m%d-%H%M-%S').png" ;;
#	"a selected area (copy)") maim -s | xclip -selection clipboard -t image/png ;;
#	"current window (copy)") maim -i "$(xdotool getactivewindow)" | xclip -selection clipboard -t image/png ;;
#	"full screen (copy)") maim | xclip -selection clipboard -t image/png ;;
esac
