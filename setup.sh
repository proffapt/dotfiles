#!/bin/bash

## backup drive location: /Users/proffapt/Library/Mobile Documents/com~apple~CloudDocs
## get text replacements
## configure default location of python via soft link to /usr/bin/ptyhon3

## setting fingerprints for sudo
echo "Add this into the first entry of the file we being opened"
echo "auth       sufficient     pam_tid.so"
sleep 5
sudo nano /etc/pam.d/sudo

## Installing brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/proffapt/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/proffapt/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew upgrade

echo "Login into apple account and configure settings now, by then imma install some stuff" && sleep 5
## Installing casks from brew 
brew install --cask bitwarden veracrypt discord keepassxc firefox telegram obsidian warp keycastr element finicky docker aldente eiskaltdcpp android-file-transfer mpv slack ranger

## Installing formulae from brew
brew install git docker wget curl neovim bash gh fswatch mas bat npm neofetch htop thefuck shellcheck tldr shfmt autojump
sudo npm install yarn -g
npm i -g who-unfollowed-me

## installing from apple store
mas install 937984704 # amphetamine

## some unga boonga
defaults write org.x.X11 wm_ffm -bool true
defaults write ApplePressAndHoldEnabled -bool false
defaults write com.apple.finder CreateDesktop false
defaults write com.apple.dock autohide-delay -float 0
defaults write PMPrintingExpandedStateForPrint -bool TRUE
defaults write com.apple.screecapture type JPG

## cracked software
echo "Cracked Sofwares:
  - Bartender
	- Sound Source
	- SlidePad
	- Networker Pro"

## setting up dotfiles
mkdir ~/Desktop/dotfiles
git config --global credential.helper store
git clone https://github.com/proffapt/dotfiles ~/Desktop/dotfiles/public
git clone https://github.com/proffapt/dotfiles-private ~/Desktop/dotfiles/private
git clone https://github.com/proffapt/obsidian ~/Desktop/obsidian/

# setting up git
rm -f ~/.gitconfig
ln -s ~/Desktop/dotfiles/public/git/.gitconfig ~/.gitconfig

# setting up finicky
rm -f ~/.finicky.js
ln -s ~/Desktop/dotfiles/public/finicky/.finicky.js ~/.finicky.js

# setting up hosts file
sudo rm -f /etc/hosts
sudo ln -s ~/Desktop/dotfiles/private/hosts/hosts /etc/hosts

# setting up aria2 configuration
mkdir ~/.aria2
ln -s ~/Desktop/dotfiles/public/aria2.conf ~/.aria2/aria2.conf

# setting up zsh shell
mkdir ~/.zshconf
ln -s ~/Desktop/dotfiles/private/shell_aliases ~/.zshconf/alias

rm -f ~/.config/fish/config.fish
ln -s ~/Desktop/dotfiles/public/fish/config.fish ~/.config/fish/config.fish
rm -f ~/.config/fish/functions/myfuncs.fish
ln -s ~/Desktop/dotfiles/public/fish/myfuncs.fish ~/.config/fish/functions/myfuncs.fish
## sourcing fish files
source ~/.config/fish/config.fish ~/.config/fish/fish_variables ~/.config/fish/functions/fish_prompt.fish ~/.config/fish/functions/myfuncs.fish ~/.config/fish/functions/aliases.fish

# setting up nvim
pip3 install pynvim # https://carakan.net/blog/2020/04/configuring-python3-on-neovim/
rm -f ~/.nvimrc
ln -s ~/Desktop/dotfiles/public/nvim/.nvimrc ~/.nvimrc
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim && echo "source ~/.nvimrc" > ~/.config/nvim/init.vim
echo "Now you will be shown a nvim buffer, Install the Plugins using :PlugInstall"
sleep 5
nvim /tmp/test.txt && rm -f /tmp/test.txt
ln -s ~/Desktop/dotfiles/public/nvim/codedark.vim ~/.vim/plugged/nightfox.nvim/colors/codedark.vim

# setting up scripts
mkdir ~/Desktop/scripts
ln -s ~/Desktop/dotfiles/public/scripts/editor ~/Desktop/scripts/editor
ln -s ~/Desktop/dotfiles/public/scripts/cfmt ~/Desktop/scripts/cfmt
ln -s ~/Desktop/dotfiles/private/scripts/kwoc-db ~/Desktop/scripts/kwoc-db
ln -s ~/Desktop/dotfiles/private/scripts/kwoc-db-newprojects ~/Desktop/scripts/kwoc-db-newprojects
ln -s ~/Desktop/dotfiles/private/scripts/kwoc-db-stats ~/Desktop/scripts/kwoc-db-stats

## getting things from github
mkdir -p ~/Desktop/college/

## getting my other tools
# getting code runner
sudo mkdir /usr/local/bin/
curl https://raw.githubusercontent.com/proffapt/code-runner/main/setup.sh | bash

#gsync setup??
# setup a rsync backup to icloud for these folders.

# getting files from backup
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Pictures/* ~/Pictures/
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads/* ~/Downloads/
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/* ~/Documents/
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Movies/* ~/Movies/

mkdir ~/sandbox
mkdir -p ~/Desktop/github/_forked ~/Desktop/github/_cloned

cd ~/Desktop/github/_cloned 
gc proffapt/gyft
gc proffapt/gyft2
gc proffapt/gyft-serve
cd - && cd ~/Desktop/github/
gc proffapt/own-youtube
gc proffapt/fERP
gc proffapt/myREADME
cd - && cd ~/Desktop/utilities
gc proffapt/code-runner
gc proffapt/pomodoro-cli

mkdir ~/Desktop/koss
