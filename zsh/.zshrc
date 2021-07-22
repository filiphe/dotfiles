source ~/.zplug/init.zsh

zplug "plugins/archlinux", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/mvn", from:oh-my-zsh
zplug "plugins/ssh-agent", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh

zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-completions", defer:2, use:"src"
zplug "zsh-users/zsh-autosuggestions"

zplug "marlonrichert/zsh-autocomplete"

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
alias tree='tree -C'
alias grep='grep --color=auto'
alias rm='rm -i'
test -f /usr/bin/nvim && alias vim='nvim'
alias cal='cal -m'

peek() { tmux split-window -p 33 less $@ || exit; }


# options
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt nobeep
setopt nohup
setopt notify
setopt complete_aliases
setopt correct
setopt hist_ignore_dups
unsetopt cdablevars


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(starship init zsh)
