#!/usr/bin/bash

xset +fp /usr/share/fonts/local
xset +fp "$HOME"/.fonts
xset fp rehash

xrdb -merge "$HOME/.Xresources"
xsetroot -cursor_name left_ptr
setroot --restore
unclutter &
urxvtd&

export BROWSER="qutebrowser"
export TERMCMD="urxvtc"

exec herbstluftwm --locked

