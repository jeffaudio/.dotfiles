
HOST_SLUG=""
DEFAULT_USER=`whoami`
HOSTNAME=`hostname`
ZSH_CUSTOM=$HOME/.zshrc_custom

ANTIGEN_LOG=$HOME/antigen.log

# Environment Variables
export ZSH=$HOME/.oh-my-zsh
export GPG_TTY=$(tty)

# Aliases
alias docker-ls="docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\""
alias code="/Applications/Visual\ Studio\ Code\ -\ Insiders.app/Contents/MacOS/Electron"

# Package Manager
source $HOME//.dotfiles/config/antigen.zsh
antigen use oh-my-zsh
antigen theme agnoster
antigen bundle mafredri/zsh-async
antigen bundle git
antigen bundle $HOME/.dotfiles/zsh_custom/plugins/agnoster-vim

antigen apply

# Enable reverse history search
bindkey '^R' history-incremental-search-backward
bindkey '^B' backward-word
bindkey '^W' forward-word
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey "\e[3~" delete-char
bindkey '[C' forward-word
bindkey '[D' backward-word