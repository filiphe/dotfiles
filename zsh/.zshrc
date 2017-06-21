source $HOME/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle archlinux
antigen bundle docker-compose
antigen bundle git
antigen bundle history-substring-search
antigen bundle mvn
antigen bundle sprunge
antigen bundle vi-mode

antigen bundle MichaelAquilina/zsh-you-should-use

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme refined

antigen apply

bindkey -v
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd '?' history-incremental-search-backward

# aliases
alias ls='ls -hF --si --color=auto --group-directories-first'
alias tree='tree -C'
alias grep='grep --color=auto'
alias rm='rm -i'
test -f /usr/bin/nvim && alias vim='nvim'


# options
setopt nobeep
setopt nohup
setopt notify
setopt complete_aliases
setopt correct
setopt hist_ignore_dups
unsetopt cdablevars

source "$HOME/.local/share/nvim/plugged/gruvbox/gruvbox_256palette.sh"
