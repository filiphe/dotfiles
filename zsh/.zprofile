# MPD daemon start (if no other user instance exists)
#if [[ ! -o login && ! -s ~/.mpd/pid ]]; then
#  mpd
#fi
#if [[ -z $(pidof mpdas)  ]]; then
#  mpdas > /dev/null &
#fi

# automatically open WM on Xserver 0, and open openbox on 1
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec /usr/bin/xinit "$HOME/.xinitrc" -- :0 -nolisten tcp vt1
[[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec /usr/bin/xinit "$HOME/.openboxrc" -- :1 -nolisten tcp vt2

typeset -U path
path=($HOME/.local/bin $GOPATH/bin $path[@])
