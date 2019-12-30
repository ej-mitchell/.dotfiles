# Path to your oh-my-zsh installation.
export ZSH="/Users/eliza_mitchell/.oh-my-zsh"

autoload -U promptinit; promptinit
prompt pure

# Disable ZSH themes for Pure
ZSH_THEME=""

# exports
source $HOME/.zsh_exports

# aliases
source $HOME/.zsh_aliases

# # functions
source $HOME/.zsh_functions

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

