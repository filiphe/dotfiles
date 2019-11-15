# automatically open WM on Xserver 0, and open openbox on 1
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec /usr/bin/xinit "$HOME/.xinitrc" -- :0 -nolisten tcp vt1
[[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && exec /usr/bin/xinit "$HOME/.openboxrc" -- :1 -nolisten tcp vt2

export FZF_DEFAULT_OPTS="--height 40% --reverse"
typeset -U path
path=($HOME/.local/bin $path[@] $GOPATH/bin $HOME/.cargo/bin $HOME/.pub-cache/bin)
