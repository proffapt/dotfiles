#### Exporting environment variables
#
export GRB_LICENSE_FILE="/Users/proffapt/certs+licenses/gurobi.lic"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export DENO_INSTALL="/Users/proffapt/.deno"
#### ----

#### Configuring PATH variable
#
### --- Languages ---
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

#### Configuring homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

#### Configuring fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#### Configuring autojump
[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish
