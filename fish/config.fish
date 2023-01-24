if status is-interactive
    ########### Commands to run in interactive sessions can go here	#############

	### Configuring greeter
    set fish_greeting

	### Sourcing my 'fishy' functions
	source ~/.config/fish/functions/myfuncs.fish 

	### Sourcing my 'fishy' aliases
	source ~/.config/fish/functions/aliases.fish

	### Configuring my environment varaibles
	## homebrew
    set PATH /opt/homebrew/bin $PATH
    set PATH /opt/homebrew/sbin $PATH

	## golang
	set PATH /Users/proffapt/go/bin $PATH

	## python
	set PATH /Users/proffapt/Library/Python/3.9/bin $PATH

	## rust
	set PATH $HOME/.cargo/bin $PATH

	## java
	set JAVA_HOME /Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home

	## gurobi
	set -Ux GRB_LICENSE_FILE "/Users/proffapt/certs+licenses/gurobi.lic"

	## Custom env variables
    set PATH ~/Desktop/scripts $PATH ##scripts

	### Configuring autojump
	[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

	### Configuring thefuck
	thefuck --alias | source
end
