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
## Installing stuff from brew
brew install bitwarden veracrypt discord keepassxc firefox telegram obsidian warp keycastr element finicky docker aldente eiskaltdcpp android-file-transfer mpv slack ranger visual-studio-code git docker wget curl neovim bash gh fswatch mas bat npm neofetch htop thefuck shellcheck tldr shfmt diff-so-fancy
## Installing who-unfollowed-me
sudo npm install yarn -g
npm i -g who-unfollowed-me
## Installing code-runner
brew tap proffapt/brewtap
brew install code-runner

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

## Configure git
# diff-so-fancy configs
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.func       "146 bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"
# others
git config --global credential.helper store
git config gpg.format ssh
git config user.signingkey ~/.ssh/id_ed25519.pub
## setting up dotfiles
mkdir ~/Desktop/dotfiles
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

# setting up zsh shell
mkdir ~/.zshconf
rm -f ~/.zshrc
ln -s ~/Desktop/dotfiles/private/shell_aliases ~/.zshconf/alias
ln -s ~/Desktop/dotfiles/public/zsh/functions ~/.zshconf/functions
ln -s ~/Desktop/dotfiles/public/zsh/.zshrc ~/.zshrc
## sourcing fish files
source ~/.zshrc ~/.zprofile

# setting up scripts
mkdir ~/Desktop/scripts
ln -s ~/Desktop/dotfiles/public/scripts/* ~/Desktop/scripts/
ln -s ~/Desktop/dotfiles/private/scripts/* ~/Desktop/scripts/

## getting things from github
git clone https://github.com/proffapt/obsidian ~/Desktop/obsidian/

## Creating directory structure
mkdir -p ~/Desktop/college/
mkdir ~/sandbox
mkdir -p ~/Desktop/github/_forked ~/Desktop/github/_cloned
mkdir ~/Desktop/koss

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

# getting files from backup
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Pictures/* ~/Pictures/
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads/* ~/Downloads/
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/* ~/Documents/
rsync -rP ~/Library/Mobile\ Documents/com~apple~CloudDocs/Movies/* ~/Movies/
