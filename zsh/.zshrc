if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

unsetopt cdablevars
autoload -U colors && colors
autoload -U compinit promptinit
compinit
promptinit
prompt steeef

alias ll="ls -al"
alias vim="nvim"

eval $(dircolors ~/.dircolors)
