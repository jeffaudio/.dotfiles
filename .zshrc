
# Environment Variables
export ZSH=$HOME/.oh-my-zsh
export GPG_TTY=$(tty)
DEFAULT_USER=`whoami`

source $ZSH/.oh-my-zsh.sh

# Package Manager
source ~/.dotfiles/config/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussell

antigen bundle git

antigen apply

# Setup default prompt
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  else
    prompt_segment black default "👋"
  fi
}