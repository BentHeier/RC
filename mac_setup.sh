
#installs brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew install git
brew install vim
brew install rdesktop

echo rdesktop config
read rdesktop
echo >> \rn alias arx=\"$rdesktop\"

#moves RCs
cp bashrc ~/.bash_profile
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf

#installs vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
#starts vim with the intall command
vim +BundleInstall
