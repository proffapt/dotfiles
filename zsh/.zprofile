### Sourcing stuff
source ~/.zshconf/alias
source ~/.zshconf/functions

#### Exporting environment variables
#
export EDITOR=nvim
export VISUAL=nvim
export PAGER=bat
export LANG=en_US.UTF-8
export MFTPD=/home/pi/mftp
export DENO_INSTALL="/Users/proffapt/.deno"
export GRB_LICENSE_FILE="/Users/proffapt/certs+licenses/gurobi.lic"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
# For compilers to find postgresql@16:
  export LDFLAGS="-L/opt/homebrew/opt/postgresql@16/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/postgresql@16/include"
# For compilers to find ruby@latest:
  export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
# For compilers to find ruby@2.7.5:
  export LDFLAGS="-L/Users/proffapt/.rbenv/versions/2.7.5/lib"
  export CPPFLAGS="-I/Users/proffapt/.rbenv/versions/2.7.5/include"
# For pkg-config to find postgresql@16:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@16/lib/pkgconfig"
#### ----

#### Configuring PATH variable
#
### --- Languages ---
PATH=/Users/proffapt/Library/Python/3.9/bin:$PATH # python
PATH=/Users/proffapt/go/bin:$PATH # golang
PATH=$HOME/.cargo/bin:$PATH # rust
PATH="$DENO_INSTALL/bin:$PATH" # deno
PATH=/opt/homebrew/opt/postgresql@16/bin:$PATH # postgresql
PATH="/opt/homebrew/opt/ruby/bin:$PATH" # ruby@latest
PATH="/Users/proffapt/.rbenv/versions/2.7.5/bin/:$PATH" # ruby@2.7.5
### ---
#
### --- Custom ---
PATH=/opt/homebrew/bin:$PATH # homebrew
PATH=/opt/homebrew/sbin:$PATH # homebrew
PATH=~/Desktop/scripts:$PATH # my scripts
PATH=~/Desktop/iitkgp/erp/_scripts:$PATH # erp scripts
PATH=~/Desktop/iitkgp/koss/KWoC/scripts:$PATH # kwoc scripts
PATH="/opt/homebrew/opt/curl/bin:$PATH" # curl
### ---

#### Configuring tools
# 
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## thefuck
eval $(thefuck --alias)
