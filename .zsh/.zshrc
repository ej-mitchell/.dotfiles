source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sindresorhus/pure

antigen apply

# Pure Prompt Style Adjustments
PURE_PROMPT_SYMBOL=➺
PURE_GIT_DOWN_ARROW=⥝
PURE_GIT_UP_ARROW=⥘
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:prompt:success color 10
zstyle :prompt:git:stash color yellow

CASE_SENSITIVE="true"

# exports
source $HOME/.zsh_exports

# aliases
source $HOME/.zsh_aliases

# functions
source $HOME/.zsh_functions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

