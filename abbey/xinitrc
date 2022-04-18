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

# test. xrdb
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# temporary fix for refresh rates; later, get driver modelines for 10-monitor.conf in /etc/X11/xorg.conf.d/
xrandr --output DP-0 --mode 2560x1440 --rate 144.00

# fix scaling/dpi
# xrandr --output DP-0 --scale 1.25x1.25
# adjust Xresources later


# custom setup
pasystray &
copyq &
nm-applet &
xsettingsd &
picom --experimental-backends &
exec awesome
