xset +fp /usr/share/fonts/local
xset fp rehash

xrdb -load .Xresources
xsetroot -cursor_name left_ptr &
xset m 3/2 0 &
dropbox start &
unclutter &

exec herbstluftwm --locked

