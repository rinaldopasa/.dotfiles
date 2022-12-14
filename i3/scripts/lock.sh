#!/usr/bin/env bash

#img=$HOME/.config/i3/lock.png
img=/tmp/i3lock.png

#scrot $img
shotgun -f pam $img
convert $img -scale 10% -scale 1000% $img

i3lock -u -i $img
