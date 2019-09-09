#!/bin/sh

cp bashrc ~/.bashrc
cp vimrc ~/.vimrc
mkdir ~/.config
mkdir ~/.config/ranger
cp rc.conf ~/.config/ranger/rc.conf
touch ~/.tmux.conf
cp tmux.conf ~/.tmux.conf

