source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/archlinux
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/encode64
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/mvn
  zgen oh-my-zsh plugins/sprunge
  zgen oh-my-zsh plugins/ssh-agent
  zgen oh-my-zsh plugins/tmux

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-autosuggestions

  zgen load MichaelAquilina/zsh-you-should-use
  zgen load mafredi/zsh-async

#  zgen load sobolevn/sobole-zsh-theme sobole
  zgen load denysdovhan/spaceship-prompt spaceship

  # generate the init script from plugins above
  zgen save
fi

eval $(dircolors ~/.dircolors.nord)


# aliases
alias pacaur='yay'
alias ls='ls -hF --si --color=auto --group-directories-first'
alias tree='tree -C'
alias grep='grep --color=auto'
alias rm='rm -i'
test -f /usr/bin/nvim && alias vim='nvim'

upgrade () {
    yay -Syu
}

peek() { tmux split-window -p 33 less $@ || exit; }


# options
setopt nobeep
setopt nohup
setopt notify
setopt complete_aliases
setopt correct
setopt hist_ignore_dups
unsetopt cdablevars


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(kubectl completion zsh)
source <(minikube completion zsh)
source /home/yur763/vcs/bitbucket/DC-PLATFORM/dev-tools/minikube-functions
