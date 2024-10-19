# Prompt
autoload -U colors && colors
PROMPT=' %1~ %# '

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
# source ~/.config/zsh/plugins/zsh-syntax-highlighting//zsh-syntax-highlighting.zsh 2>/dev/null
# (( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
# ZSH_HIGHLIGHT_STYLES[path]=none
# ZSH_HIGHLIGHT_STYLES[path_prefix]=none
# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Gruvbox loading test
source ~/.config/zsh/plugins/gruvbox_256palette.sh

#Load zsh-autosugestions:
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load fast-syntax-highlighting
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Basic auto/tab complete:
autoload -U compinit
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Default editor
export EDITOR=nvim

# Aliases
alias gs="git status"
alias neof="neofetch"
alias fu="flatpak update"
alias pokemon='pokemon-colorscripts'
alias ls="eza --icons --classify"
alias la="eza --all --icons --classify"
alias ll="eza --all --long --grid --binary --git --icons"
alias tree="eza --tree --icons"
alias f="fish"
alias nconf="nvim ~/.config/nvim"
alias nconfig="nvim ~/.config/nvim"
alias n="nvim"

# Golang
export GOPATH="$HOME/Code/go/"
# export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin:/usr/local/go/bin"

#Rust
export PATH="$HOME/.cargo/bin:$PATH"
