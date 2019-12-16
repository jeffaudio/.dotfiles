
HOST_SLUG=""
DEFAULT_USER=`whoami`
HOSTNAME=`hostname`

# Environment Variables
export ZSH=$HOME/.oh-my-zsh
export GPG_TTY=$(tty)

# Package Manager
source ~/.dotfiles/config/antigen.zsh
antigen use oh-my-zsh
antigen theme agnoster
antigen bundle mafredri/zsh-async
antigen bundle git

antigen apply

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
