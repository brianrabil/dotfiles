# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return ;;
esac

# Set default editor
export EDITOR=nvim

# Enable color support for ls and add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias ll='ls -lah'
    alias l='ls -CF'
fi

# Some more ls aliases
alias la='ls -A'
alias l='ls -CF'

# Git aliases
alias gst='git status'
alias gco='git checkout'
alias gbr='git branch'
alias gcm='git commit'
alias gpl='git pull'
alias gps='git push'

# Docker aliases
alias dps='docker ps'
alias di='docker images'
alias dstart='docker start'
alias dstop='docker stop'
alias drm='docker rm'
alias drmi='docker rmi'

# Enable persistent history and history search
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups  # Avoid duplicate entries
shopt -s histappend  # Append to the history file, don't overwrite it
shopt -s histverify  # Verify before executing history expansion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Prompt customization
PS1='\[\e[1;32m\]\u@\h:\[\e[1;34m\]\w\[\e[0m\] \$ '

# Network info alias
alias netinfo='ip -c a'

# Add personal bin directory to PATH if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Add custom PATH additions here
PATH="$PATH:/usr/local/bin"

# Load bash completion if available
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Enable colored output for grep, egrep, fgrep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Set up prompt colors and title
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# End of .bashrc