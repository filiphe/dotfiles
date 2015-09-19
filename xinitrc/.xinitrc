xset +fp /usr/share/fonts/local
xset fp rehash

xsetroot -cursor_name left_ptr &
xset m 3/2 0 &
redshift -l 55.7:12.0 -t 5700:3600 -g 0.8 -m randr -v &
dropbox start &
exec bspwm

