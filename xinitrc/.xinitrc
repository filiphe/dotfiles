#!/usr/bin/bash

xset +fp /usr/share/fonts/local
xset +fp "$HOME"/.fonts
xset fp rehash

xrdb -load .Xresources
xsetroot -cursor_name left_ptr &
xset m 3/2 0 &
unclutter &

exec herbstluftwm --locked

