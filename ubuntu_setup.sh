sudo apt update
sudo apt upgrade -y
snap install spotify
sudo apt install git -y
sudo apt install terminator -y
sudo apt install vim -y
sudo apt install openssh-server -y
sudo apt install build-essential cmake -y
sudo apt install python-dev python3-dev -y
sudo apt install chromium-browser -y
sudo apt install vlc -y
sudo apt install steam -y
sudo apt install rdesktop -y
sudo apt install ranger -y
sudo apt install tmux -y
sudo snap install slack
sudo apt install net-tools -y
sudo apt install nmap -y
sudo apt install curl -y
sudo apt install python-pip -y
sudo apt install python3-pip -y
pip3 install spotify-cli-linux
sudo apt install yakuake -y
sudo apt install flameshot -y

#moves RCs
./rc_update.sh

#installs vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
#starts vim with the intall command
vim +BundleInstall
