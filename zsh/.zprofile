### Sourcing stuff
source ~/.zshconf/alias
source ~/.zshconf/functions

#### Exporting environment variables
#
export EDITOR=lvim
export VISUAL=lvim
export PAGER=bat
export LANG=en_US.UTF-8
export GRB_LICENSE_FILE="/Users/proffapt/certs+licenses/gurobi.lic"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-19.jdk/Contents/Home"
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
PATH=/Users/proffapt/.local/bin:$PATH # Local
#
### --- Languages ---
PATH=/Users/proffapt/go/bin:$PATH # golang
PATH=$HOME/.cargo/bin:$PATH # rust
PATH=/opt/homebrew/opt/postgresql@16/bin:$PATH # postgresql
PATH="/opt/homebrew/opt/ruby/bin:$PATH" # ruby@latest
PATH="/Users/proffapt/.rbenv/versions/2.7.5/bin/:$PATH" # ruby@2.7.5
### ---
#
### --- Application ---
PATH="/Applications/Docker.app/Contents/Resources/bin/:$PATH" # docker
PATH="/usr/local/opt/openssl@3/bin:$PATH" #openssl
### ---
#
### --- Custom ---
PATH=~/Desktop/scripts:$PATH # my scripts
#### --- KGP ---
PATH=~/Desktop/iitkgp/erp/_scripts:$PATH # erp scripts
PATH=~/Desktop/iitkgp/koss/KWoC/scripts:$PATH # kwoc scripts
#### ---
#### --- AWSMO ---
PATH=/Users/proffapt/Desktop/intern/awsmo/dev_env_config/:$PATH # manage-systems
PATH=/Users/proffapt/Desktop/intern/awsmo/_scripts/:$PATH # scripts (automation)
#### ---
PATH=/opt/homebrew/bin:$PATH # homebrew
PATH=/opt/homebrew/sbin:$PATH # homebrew
PATH="/opt/homebrew/opt/curl/bin:$PATH" # curl
### ---

#### Configuring tools
# 
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## pyenv
### Python version manager
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
##
export MANPAGER="lvim +Man!"

