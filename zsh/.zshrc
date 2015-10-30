if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

unsetopt cdablevars
autoload -U colors && colors
autoload -U compinit promptinit
compinit
promptinit
prompt skwp

export EDITOR='nvim'
export PAGER='less'
export LESS='-ir'

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[00;47;30m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Fancy colors a la daoo
alias l='ls'
alias ls='ls -hF --si --color=auto --group-directories-first'
alias tree='tree -C'
alias grep='grep --color=auto'

alias ll='ls -l'
alias la='ls --almost-all'
alias lla='ls -l --almost-all'
alias vim='nvim'

eval $(dircolors ~/.dircolors)

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Gruvbox shell
GRUVBOX_SHELL="$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"
[[ -s $GRUVBOX_SHELL ]] && source $GRUVBOX_SHELL

