if [ -f $HOME/.Xmodmap ]; then
	/usr/bin/xmodmap $HOME/.Xmodmap
fi

xset +fp /usr/share/fonts/local
xset fp rehash

hsetroot -solid "#268bd2" -tile /home/filip/pictures/patterns/square_bg.png

xss-lock -- i3lock -u -e -i /home/filip/pictures/patterns/square_bg.png -t &

compton --config ~/.compton.conf -b
xsetroot -cursor_name left_ptr &
xscreensaver -no-splash &
xset m 3/2 0 &
unclutter &
redshift -l 55.7:12.0 -t 5700:3600 -g 0.8 -m vidmode -v &
dropbox start &
exec bspwm
