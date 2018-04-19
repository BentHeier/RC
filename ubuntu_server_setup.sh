sudo apt update
sudo apt upgrade -y
sudo apt install git -y
sudo apt install terminator -y
sudo apt install vim -y
sudo apt install openssh-server -y
sudo apt install build-essential cmake -y
sudo apt install python-dev python3-dev -y
sudo apt install ranger -y

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
mkdir ~/.config/ranger
cp rc.conf ~/.config/ranger/rc.conf

#installs vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
#starts vim with the intall command
vim +BundleInstall