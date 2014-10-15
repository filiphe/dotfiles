xset +fp /usr/share/fonts/local
xset fp rehash
sh /home/filip/.screenlayout/dual.sh &
hsetroot -solid "#268bd2" -tile /home/filip/pictures/patterns/square_bg.png
compton &
xsetroot -cursor_name left_ptr &
redshift -l 55.7:12.0 -t 5600:3400 -g 0.8 -m randr -v &
xset m 3/2 0 &
unclutter &
dropbox start &
exec bspwm
