# source "${HOME}/.zgen/zgen.zsh"
# 
# # if the init scipt doesn't exist
# if ! zgen saved; then
# 
#   # specify plugins here
#   zgen oh-my-zsh
#   zgen oh-my-zsh plugins/archlinux
#   zgen oh-my-zsh plugins/docker
#   zgen oh-my-zsh plugins/encode64
#   zgen oh-my-zsh plugins/git
#   zgen oh-my-zsh plugins/kubectl
#   zgen oh-my-zsh plugins/mvn
#   zgen oh-my-zsh plugins/sprunge
#   zgen oh-my-zsh plugins/ssh-agent
#   zgen oh-my-zsh plugins/tmux
# 
#   zgen load zsh-users/zsh-syntax-highlighting
#   zgen load zsh-users/zsh-completions src
#   zgen load zsh-users/zsh-autosuggestions
# 
#   zgen load MichaelAquilina/zsh-you-should-use
#   zgen load mafredi/zsh-async
# 
# #  zgen load sobolevn/sobole-zsh-theme sobole
# #  zgen load denysdovhan/spaceship-prompt spaceship
# 
#   # generate the init script from plugins above
#   zgen save
# fi

source ~/.zplug/init.zsh

zplug "plugins/archlinux", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/mvn", from:oh-my-zsh
zplug "plugins/ssh-agent", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions", defer:2, use:"src"
zplug "zsh-users/zsh-autosuggestions"

zplug "MichaelAquilina/zsh-you-should-use"
zplug "mafredri/zsh-async", from:"github", use:"async.zsh"

zplug "DarrinTisdale/zsh-aliases-exa"

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
    zplug install
fi

# source plugins and add commands to the PATH
zplug load


# aliases
alias pacaur='yay'
#alias ls='ls -hF --si --color=auto --group-directories-first'
alias ls='exa --group-directories-first --icons'
alias tree='tree -C'
alias grep='grep --color=auto'
alias rm='rm -i'
test -f /usr/bin/nvim && alias vim='nvim'
alias cal='cal -m'

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
#source "$HOME/.local/share/nvim/plugged/gruvbox/gruvbox_256palette.sh"

source "$HOME/.proxy.zsh"

eval $(starship init zsh)
