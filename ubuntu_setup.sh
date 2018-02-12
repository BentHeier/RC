sudo apt update
sudo apt upgrade
sudo apt install git
sudo apt install terminator
snap install spotify
sudo apt install vim
sudo apt install openssh-server
sudo apt install build-essential cmake
sudo apt install python-dev python3-dev
sudo apt install chromium-browser
sudo apt install vlc
sudo apt install steam

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
