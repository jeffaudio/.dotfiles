
# Package Manager
source ~/.dotfiles/config/antigen.zsh
antigen use oh-my-zsh
antigen theme robbyrussel

antigen bundle git

antigen apply

# Environment Variables
export GPG_TTY=$(tty)

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  else
    prompt_segment black default "👋"
  fi
}