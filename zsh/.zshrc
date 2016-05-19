source $HOME/.antigen.zsh
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
colored-man-pages
sprunge
vi-mode
zsh-users/zsh-completions src
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search
EOBUNDLES

antigen theme af-magic
bindkey -v
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd '?' history-incremental-search-backward
antigen apply

# aliases
alias ls='ls -hF --si --color=auto --group-directories-first'
alias tree='tree -C'
alias grep='grep --color=auto'
alias vim='nvim'

alias rm='rm -i'

alias wttr='curl wttr.in/gothenburg'

alias ta='tmux -2 -u attach'

# options
setopt nobeep
setopt nohup
setopt notify
unsetopt cdablevars

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
