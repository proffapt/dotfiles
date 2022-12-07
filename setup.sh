#!/bin/bash

## backup drive location: /Users/proffapt/Library/Mobile Documents/com~apple~CloudDocs
## get text replacements

## setting fingerprints for sudo
sudo "auth sufficient pam_tid.so" >> /etc/pam.d/sudo

## Installing brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Login into apple account now, by then imma install some stuff"
## Installing casks from brew 
brew install --cask veracrypt accord keepassxc bitwarden firefox telegram obsidian warp keycastr element finicky hiddenbar docker aldente obs vlc eiskaltdcpp android-file-transfer intellij-idea-ce mpv slack

## Installing formulae from brew
brew install git docker wget curl nvim bash gh fswatch mas fish bat

## switching to fish
chsh -s $(which fish)

## some unga boonga
defaults write com.microsoft.VSCodeExploration ApplePressAndHoldEnabled -bool false
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write org.x.X11 wm_ffm -bool true
defaults write com.apple.Terminal FocusFollowsMouse -string YES
defaults write ApplePressAndHoldEnabled -bool false
defaults write com.apple.finder CreateDesktop false
defaults write com.apple.dock autohide-delay -float 0
defaults write PMPrintingExpandedStateForPrint -bool TRUE
defaults write com.apple.screecapture type JPG

## installing from apple store
mas install 771076721
mas install 937984704

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
git clone https://github.com/proffapt/dotfiles ~/Desktop/dotfiles/public
git clone https://github.com/proffapt/dotfiles-private ~/Desktop/dotfiles/private

# setting up git
rm -f ~/.gitconfig
ln -s ~/Desktop/dotfiles/public/git/.gitconfig ~/.gitconfig
git config credential.helper store

# setting up finicky
rm -f ~/.finicky.js
ln -s ~/Desktop/dotfiles/public/finicky/finicky.js ~/.finicky.js

# setting up hosts file
sudo rm -f /etc/hosts
sudo ln -s ~/Desktop/dotfiles/private/hosts/hosts /etc/hosts

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
ln -s ~/Desktop/dotfiles/private/fish/aliases.fish ~/.config/fish/functions/aliases.fish
## sourcing fish files
source ~/.config/fish/config.fish ~/.config/fish/fish_variables ~/.config/fish/functions/fish_prompt.fish ~/.config/fish/functions/myfuncs.fish ~/.config/fish/functions/aliases.fish

# setting up nvim
rm -f ~/.nvimrc
ln -s ~/Desktop/dotfiles/public/nvim/.nvimrc ~/.nvimrc
echo "Now you will be shown a nvim buffer, Install the Plugins using :PlugInstall"
sleep 5
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
git clone https://github.com/proffapt/iitkgp-pds-lab ~/Desktop/college/pds
