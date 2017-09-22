#!/usr/bin/bash

xset +fp /usr/share/fonts/local
xset +fp "$HOME"/.fonts
xset fp rehash

xrdb -merge "$HOME/.Xresources"
xsetroot -cursor_name left_ptr
setroot --restore
dunst &
redshift &
compton -b &

export BROWSER="chromium"
export TERMCMD="termite"

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec herbstluftwm --locked
#export XDG_CURRENT_DESKTOP=Budgie:GNOME
#exec budgie-desktop

