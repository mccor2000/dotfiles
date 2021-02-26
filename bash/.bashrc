source ~/.git-prompt.sh
# History control
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=100000
HISTFILESIZE=2000000
shopt -s histappend

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

##############################################################################
################################ ALIAS #######################################
##############################################################################
alias c='clear'
alias cs='clear;ls'
alias ls='ls -F --color=auto'
alias ll='ls -alh | lolcat'
alias tree='tree | lolcat'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

alias vim="nvim"
alias r="cmatrix -af -u 3 | lolcat"
##############################################################################
################################ COMMAND #####################################
##############################################################################

export EDITOR='nvim'

##############################################################################
################################  PS1  #######################################
##############################################################################
txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
badgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset

# Prompt colours
atC="${txtpur}"
nameC="${txtpur}"
hostC="${txtpur}"
pathC="${txtgrn}"
gitC="${bldcyn}"
pointerC="${txtgrn}"
normalC="${txtblu}"

# Red name for root
if [ "${UID}" -eq "0" ]; then
  nameC="${txtred}"
fi

function gitPrompt {
  command -v __git_ps1 > /dev/null && __git_ps1 " (%s)"
}

# Patent Pending Prompt
export PS1="${nameC}\u | ${pathC}\w${gitC}\$(gitPrompt)${pointerC} ▶${normalC} "
