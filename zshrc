
HOST_SLUG=""
DEFAULT_USER=`whoami`
HOSTNAME=`hostname`

# Environment Variables
export ZSH=$HOME/.oh-my-zsh
export GPG_TTY=$(tty)

# Aliases
alias docker-ls="docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\""

# Package Manager
source ~/.dotfiles/config/antigen.zsh
antigen use oh-my-zsh
antigen theme agnoster
antigen bundle mafredri/zsh-async
antigen bundle git

antigen apply

# Allow VIM mode
bindkey -v
export KEYTIMEOUT=1

# Prompt
prompt_context() {
  if [[ $HOSTNAME == *"pi"* ]]; then
    HOST_SLUG="$PROMPT_ICON🥧"
  fi

  USER_SLUG="$USER"
  if [[ "$USER" == "$DEFAULT_USER" ]]; then
    USER_SLUG="👋"
  fi

  prompt_segment black default "$HOST_SLUG $USER_SLUG"
}
