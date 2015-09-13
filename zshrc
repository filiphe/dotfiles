if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -U colors && colors
autoload -U compinit promptinit
compinit
promptinit

prompt steeef

#export GOPATH=$HOME/git/go
#export PATH=$PATH:$GOPATH/bin

alias ll="ls -al"

unsetopt cdablevars
# Define prompts.
#PROMPT="%{$fg[cyan]%}%{$fg[magenta]%}>%{$fg[blue]%}>%{$fg[yellow]%}> %{$reset_color%}"
#RPROMPT="%{$fg[green]%}%3~ %{$fg[white]%}on %{$fg[magenta]%}%m %{$reset_color%}"

eval $(dircolors ~/.dircolors)
