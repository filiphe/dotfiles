#!/usr/bin/bash

xset +fp /usr/share/fonts/local
xset fp rehash

xrdb -load .Xresources
xsetroot -cursor_name left_ptr &
xset m 3/2 0 &
#dropbox start &
unclutter &

xinput set-prop 9 286 1
xinput set-prop 9 294 1
xinput set-prop 9 302 0, 1
exec herbstluftwm --locked

