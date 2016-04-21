source $HOME/.antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme af-magic

antigen apply

# aliases
alias ls='ls -hF --si --color=auto --group-directories-first'
alias tree='tree -C'
alias grep='grep --color=auto'

alias l='ls'
alias ll='ls -o'
alias la='ls --almost-all'
alias lla='ls -o --almost-all'
alias vim='nvim'

alias wttr='curl wttr.in/gothenburg'

alias bell="echo -ne '\a'"

# options
setopt nobeep
setopt nohup
setopt notify
unsetopt cdablevars
