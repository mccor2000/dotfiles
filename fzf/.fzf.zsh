# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mccor/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/mccor/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mccor/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mccor/.fzf/shell/key-bindings.zsh"
