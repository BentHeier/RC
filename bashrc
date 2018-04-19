#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias ls='ls --color=auto'
alias d='cd ~/Downloads'
alias h='cd ~'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias setkeymap='setxkbmap -layout "dvorak,no(dvorak)" -option "grp:alt_shift_toggle"'
alias adbIP=" adb shell ifconfig | grep 'inet addr' | cut -d: -f2 | awk '{print $1}'"
alias IP="ifconfig | grep 'inet addr' | cut -d: -f2 | awk '{print $1}'" #for Linux
#alias IP="ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2" #for Mac


gitpush() {
    git add .
    git commit -m $1
    git push
    git config credential.helper store
}

PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n~> '
EDITOR=/usr/bin/vim
