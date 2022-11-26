# Prompt
autoload -U colors && colors
PROMPT=' %1~ %# %'

autoload -Uz add-zsh-hook vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'
add-zsh-hook precmd vcs_info
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v

# The following lines were added by compinstall
zstyle :compinstall filename '/home/joaquin/.zshrc'

# Load zsh-syntax-highlighting:
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

#Load zsh-autosugestions:
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Basic auto/tab complete:
# autoload -U compinit
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Path to sh scripts:
# export PATH=$PATH:~/Documentos/ufetch/

# Default editor
export EDITOR=nvim

# Aliases
alias gs="git status"
alias n="neofetch"
alias fu="flatpak update"
alias la="ls -a"
alias pokemon='pokemon-colorscripts'

# Load at beggining
# /usr/bin/neofetch
# neofetch
# pokemon-colorscripts -r
