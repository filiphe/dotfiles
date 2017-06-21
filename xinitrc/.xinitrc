#!/usr/bin/bash

xset +fp /usr/share/fonts/local
xset +fp "$HOME"/.fonts
xset fp rehash

xrdb -merge "$HOME/.Xresources"
xsetroot -cursor_name left_ptr
setroot --restore
unclutter &
urxvtd &
dunst &
#redshift &

export BROWSER="chromium"
export TERMCMD="urxvtc"

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec herbstluftwm --locked

