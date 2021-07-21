############################################
# Zsh Config
# by Brian Rabil
############################################

############################################
# Aliases
############################################

alias ls="k -a"


############################################
# Plugins
# Use `znap source` to load your plugins.
############################################

# Init znap Package Manager
source ~/.config/zsh_plugins/zsh-snap/znap.zsh

# Plugins
znap source b4b4r07/enhancd
znap source zsh-users/zsh-autosuggestions
znap source marlonrichert/zsh-edit
znap source supercrabtree/k
znap source zsh-users/zsh-syntax-highlighting
# NOTE: There is a bug in Zsh that is breaking this
# znap source marlonrichert/zsh-autocomplete

############################################
# Evals
############################################

znap eval zoxide 'zoxide init zsh'
znap eval starship 'starship init zsh --print-full-init'


############################################
# Prompt
############################################

znap prompt
# prompt spaceship


############################################
# Vars
############################################

ZSH_AUTOSUGGEST_STRATEGY=( history )
ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )


############################################
# Startship Prompt
############################################

# SPACESHIP_PROMPT_ADD_NEWLINE=true
# SPACESHIP_CHAR_SYMBOL=" "
# SPACESHIP_TIME_SHOW=true
# SPACESHIP_TIME_COLOR="gray"
