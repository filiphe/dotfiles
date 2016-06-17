source $HOME/.antigen.zsh
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
colored-man-pages
sprunge
vi-mode
zsh-users/zsh-completions src
zsh-users/zsh-history-substring-search
EOBUNDLES
#zsh-users/zsh-syntax-highlighting

antigen theme af-magic
bindkey -v
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd '?' history-incremental-search-backward
antigen apply

source "$HOME"/.pastebin.zsh

# aliases
alias ls='ls -hF --si --color=auto --group-directories-first'
alias tree='tree -C'
alias grep='grep --color=auto'
alias vim='nvim'

alias rm='rm -i'

alias wttr='curl wttr.in/gothenburg'


# options
setopt nobeep
setopt nohup
setopt notify
setopt complete_aliases
setopt correct
setopt hist_ignore_dups
unsetopt cdablevars

# env vars
export GOPATH=$HOME/repos/go
export PATH=$HOME/.bin:$GOPATH/bin:$HOME/.cabal/bin:$PATH
export EDITOR='nvim'
export SUDO_EDITOR=$EDITOR
export PAGER='less'
export LESS='-ir'

export BROWSER=qutebrowser
