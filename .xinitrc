#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Environment valiable
export CALIBRE_USE_SYSTEM_THEME=1

# Keymapping
setxkbmap -option caps:escape,shift:both_capslock &

### Autostart ###
/usr/bin/lxpolkit &
~/.config/scripts/dunst.sh &
#twmnd &
redshift &
numlockx &
ibus-daemon -drx --xim &
unclutter &
~/.fehbg &
picom &
#~/.config/scripts/autolock.sh &
~/.config/scripts/xidlehook.sh &
sleep 2s &
slstatus &
sleep 2s &
megasync &
todoist &
thunderbird &

# Add this to your .xinitrc or whatever file starts programs on startup.
# -R restores the last colorscheme that was in use.
wal -R

#exec bspwm
exec dwm
