if [ "$EUID" -ne 0 ]
    then echo "Must be run as root"
    exit
fi
apt update
apt upgrade
apt install git
apt install terminator
snap install spotify
apt install vim
apt install openssh-server
apt install build-essential cmake
apt install python-dev python3-dev
apt install chromium-browser

#configures git
echo Git email
read email
echo Git name
read name
git config --global user.email $email
git config --global user.name  $name
git config credential.helper store

#moves RCs
cp bashrc ~/.bashrc
cp vimrc ~/.vimrc

#installs vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
#starts vim with the intall command
vim +BundleInstall
