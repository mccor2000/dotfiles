# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/mccor/.oh-my-zsh"
export TERMINAL="alacritty"
export EDITOR="nvim"
export BROWSER='firefox'

# Prompt Settings
PROMPT='%F{blue}%2~%f %F{cyan}∳%f '

# Git Prompt Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
RPROMPT+=" "
zstyle ':vcs_info:git:*' formats '%F{yellow}%b%f'
zstyle ':vcs_info:*' enable git

# Aliases
alias :q='exit'
alias c='clear'
alias cs='clear; ls'
alias ls='ls -F --color=auto'
alias ll='ls -alh | lolcat'
alias tree='tree | lolcat'
alias ..='cd ..'
alias ...='cd ../..'

alias nv='nvim'
alias v='vim'

alias commit='git commit -m'
alias co='git checkout'
alias br='git branch'
alias status='git status'

alias pac='sudo pacman'
alias ddate='date +"%R - %a, %B %d, %Y"'
alias r='cmatrix -af -u 3 | lolcat'

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
tmux
clear
echo "Yooo, what's up.."
alias pm2='/home/mccor/Learning/pm2/bin/pm2'
alias pm2='/home/mccor/Learning/pm2/bin/pm2'
