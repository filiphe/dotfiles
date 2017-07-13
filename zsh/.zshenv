# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export GOPATH=$HOME/repos/go
export EDITOR='nvim'
export SUDO_EDITOR=$EDITOR
export QUOTING_STYLE=literal ls
export PAGER="nvim -R -c 'silent! %sm/\\e.\\{-\\}m//g' -"
export MANPAGER="bash -c \"nvim -c \\\"set ft=man\\\" </dev/tty <(col -bx)\""
