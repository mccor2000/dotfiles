export ZSH=$HOME/.oh-my-zsh

#ZSH
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.profile

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

tmux
clear
echo "Yooo, what's up.."
