#!/bin/bash

## Installing brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Installing casks from brew 
brew install --cask veracrypt accord keepassxc bitwarden firefox telegram obsidian warp keycastr element finicky hiddenbar docker aldente obs vlc eiskaltdcpp android-file-transfer intellij-idea-ce mpv slack

## Installing formulae from brew
brew install git docker wget curl nvim bash gh fswatch

echo "Hotspot Shield: https://apps.apple.com/us/app/hotspot-shield-vpn-best-vpn/id771076721?mt=12"
echo "Amphetamine: https://apps.apple.com/us/app/amphetamine/id937984704?mt=12"
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

## setup gsync 
# initialising gsync
gh auth login
gh auth refresh -h github.com -s delete_repo
# configure gsync
mkdir ~/Desktop/utilities
git clone https://github.com/proffapt/gsync ~/Desktop/utilities/gsync
cd ~/Desktop/utilities/gsync

