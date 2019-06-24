#!/usr/bin/env bash

compton -b # transparency
# xcompmgr -n & # transparency
feh --bg-fill ~/Pictures/wallpaper.jpg # wallpaper

if [ -s ~/.xmonad/.xmodmap ]; then
    xmodmap initialize
    xmodmap ~/.xmonad/.xmodmap
fi

if [ -s ~/.xmonad/.xmobarrc ]; then
    xmobar ~/.xmonad/.xmobarrc &
fi

xmonad
