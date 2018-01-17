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

gitpush() {
    git add .
    git commit -m $1
    git push
}

PS1='[\u@\h \W]\$ '
# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
