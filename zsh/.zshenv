# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export GOPATH=$HOME/repos/go
export PATH=$HOME/.bin:$GOPATH/bin:$HOME/.cabal/bin:$PATH
export EDITOR='nvim'
export SUDO_EDITOR=$EDITOR
export PAGER='less'
export LESS='-ir'

export BROWSER=qutebrowser
