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

echo "Login into apple account and configure settings now, by then imma install some stuff"
## Installing casks from brew 
brew install --cask veracrypt discord keepassxc firefox telegram obsidian warp keycastr element finicky bartender docker aldente vlc eiskaltdcpp android-file-transfer mpv slack vscodium

## Installing formulae from brew
brew install git docker wget curl neovim bash gh fswatch mas fish bat npm neofetch htop thefuck
sudo npm install yarn -g
npm i -g who-unfollowed-me
fish

## installing from apple store
# Installing bitwarden
mas install 1352778147
echo "Bitwarden Installed, sign in into github in safari for further needs"
sleep 5
mas install 771076721 #hotspot shield
mas install 937984704 #amphetamine

## switching to fish
echo "Add the following into the file being opened"
echo $(which fish)
sleep 5
nano /etc/shells
chsh -s $(which fish)

## some unga boonga
defaults write org.x.X11 wm_ffm -bool true
defaults write com.apple.Terminal FocusFollowsMouse -string YES
defaults write ApplePressAndHoldEnabled -bool false
defaults write com.apple.finder CreateDesktop false
defaults write com.apple.dock autohide-delay -float 0
defaults write PMPrintingExpandedStateForPrint -bool TRUE
defaults write com.apple.screecapture type JPG

## cracked software
echo "Cracked Sofware:"
echo 
"
	- Alfred
	- Audio Hijack
	- Sound Source
	- SlidePad
	- Maccy
	- Rectangle Pro
	- Networker Pro
"
# decide for what I really need a crack.

## setting up dotfiles
mkdir ~/Desktop/dotfiles
git config --global credential.helper store
git clone https://github.com/proffapt/dotfiles ~/Desktop/dotfiles/public
git clone https://github.com/proffapt/dotfiles-private ~/Desktop/dotfiles/private

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

# setting up fish shell
rm -f ~/.config/fish/config.fish
ln -s ~/Desktop/dotfiles/public/fish/config.fish ~/.config/fish/config.fish
rm -f ~/.config/fish/fish_variables
ln -s ~/Desktop/dotfiles/public/fish/fish_variables ~/.config/fish/fish_variables
rm -f ~/.config/fish/functions/fish_prompt.fish
ln -s ~/Desktop/dotfiles/public/fish/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
rm -f ~/.config/fish/functions/myfuncs.fish
ln -s ~/Desktop/dotfiles/public/fish/myfuncs.fish ~/.config/fish/functions/myfuncs.fish
rm -f ~/.config/fish/functions/aliases.fish
ln -s ~/Desktop/dotfiles/private/shell_aliases/aliases.fish ~/.config/fish/functions/aliases.fish
## sourcing fish files
source ~/.config/fish/config.fish ~/.config/fish/fish_variables ~/.config/fish/functions/fish_prompt.fish ~/.config/fish/functions/myfuncs.fish ~/.config/fish/functions/aliases.fish

pip3 install pynvim
## https://carakan.net/blog/2020/04/configuring-python3-on-neovim/

# setting up nvim
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

## setting up gsync 
# initialising gsync
gh auth login
gh auth refresh -h github.com -s delete_repo
# configure gsync
mkdir ~/Desktop/utilities
git clone https://github.com/proffapt/gsync ~/Desktop/utilities/gsync
ln -s ~/Desktop/dotfiles/public/gsync/.defaults ~/Desktop/utilities/gsync/.defaults
ln -s ~/Desktop/dotfiles/public/gsync/.fav_editor ~/Desktop/utilities/gsync/.fav_editor
ln -s ~/Desktop/dotfiles/public/gsync/services ~/Desktop/utilities/gsync/lib/services
ln -s ~/Desktop/dotfiles/public/gsync/startup.sh ~/Desktop/utilities/gsync/lib/startup.sh
# getting repos to use with gsync
git clone https://github.com/proffapt/bodhitree ~/Desktop/bodhitree
git clone https://github.com/proffapt/obsidian ~/Desktop/obsidian/
# configuring gsync on the directories
echo "The existense of this file signifies that gsync was ran atleast once on this folder." > .gsync_init
rsync .gsync_init ~/Desktop/bodhitree/ 
rsync .gsync_init ~/Desktop/obsidian/
rsync .gsync_init ~/Desktop/dotfiles/public/
rsync .gsync_init ~/Desktop/dotfiles/private/
rm .gsync_init

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
