#!/bin/zsh
# General
alias vim='nvim'
alias o='xdg-open'
alias update='sudo xbps-install -ySu'

# Color
alias ls='ls --color=auto -hv'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -c=auto'

alias l='ls'
alias ll='ls -l'
alias la='ls -lA'

# Safety
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# Tree
alias tree='tree -a'

# Terminal
alias :c='clear'
alias :q='exit'
alias :='clear && cd $HOME'
alias up='cd ..'
alias upup='cd ../..'
alias upupup='cd ../../..'

# GIT
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gcu='git commit -m "updated"'
alias gca='git commit -m "added"'
alias gcd='git commit -m "deleted"'
alias gl='git pull'
alias gp='git push'
alias gi='git init'
alias gc='git clone'
alias gbr='git branch'
alias gco='git checkout'
alias grr='git remote rm'
alias gra='git remote add'
alias glog='git log'
alias gr='git restore'
alias gd='git diff'
