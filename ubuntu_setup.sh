sudo apt update
sudo apt upgrade -y

#install official spotify GUI application
snap install spotify

#install git
sudo apt install git -y

#install prefered terminal editors
sudo apt install terminator -y
sudo apt install yakuake -y

#install prefered texteditor
sudo apt install vim -y

sudo apt install openssh-server -y
sudo apt install build-essential cmake -y
sudo apt install python-dev python3-dev -y

#install secondory web browser
sudo apt install chromium-browser -y

#install prefered videoplayer
sudo apt install vlc -y
sudo apt install steam -y

#install prefered remote desktops 
sudo apt install rdesktop -y
sudo apt install remmina -y

#install CLI file browser
sudo apt install ranger -y

#install terminal multiplexer
sudo apt install tmux -y
sudo snap install slack
sudo apt install net-tools -y
sudo apt install nmap -y
sudo apt install curl -y
sudo apt install python-pip -y
sudo apt install python3-pip -y
pip3 install spotify-cli-linux

#install Shutter alternative
sudo apt install flameshot -y

#installs spotify-cli client
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/mopidy.list
sudo apt update
sudo apt install -y libportaudio2 libspotify12 --no-install-recommends
wegt https://github.com/fabiofalci/sconsify/releases/download/v0.5.0/linux-x86_64-sconsify-0.5.0.zip
unzip linux-x86_64-sconsify-0.5.0.zip

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
