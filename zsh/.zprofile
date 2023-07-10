### Sourcing stuff
source ~/.zshconf/alias
source ~/.zshconf/functions

#### Exporting environment variables
#
export EDITOR=nvim
export VISUAL=nvim
export PAGER=bat
export LANG=en_US.UTF-8
export DENO_INSTALL="/Users/proffapt/.deno"
export GRB_LICENSE_FILE="/Users/proffapt/certs+licenses/gurobi.lic"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
#### ----

#### Configuring PATH variable
#
### --- Languages ---
PATH=/Users/proffapt/Library/Python/3.9/bin:$PATH # python
PATH=/Users/proffapt/Library/Python/3.9/bin:$PATH # python
PATH=/Users/proffapt/go/bin:$PATH # golang
PATH=$HOME/.cargo/bin:$PATH # rust
PATH="$DENO_INSTALL/bin:$PATH" # deno
### ---
#
### --- Custom ---
PATH=~/Desktop/scripts:$PATH # scripts
PATH=/opt/homebrew/bin:$PATH # homebrew
PATH=/opt/homebrew/sbin:$PATH # homebrew
### ---

#### Configuring tools
# 
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## thefuck
eval $(thefuck --alias)
