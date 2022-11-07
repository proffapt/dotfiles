if status is-interactive
    ########### Commands to run in interactive sessions can go here	###########

	### Configuring greeting
    set fish_greeting
	###

	### sourcing my 'fishy' functions
	source ~/.config/fish/functions/myfuncs.fish 
	###

	### I keep my env varaibles here
    ## Configuring path env variables
    set PATH /opt/homebrew/bin $PATH
    set PATH /opt/homebrew/sbin $PATH
    set PATH /Users/proffapt/Desktop/dotfiles/public/scripts $PATH
	##

	## Configuring env varaible for rust
	set -gx PATH "$HOME/.cargo/bin" $PATH
	##

	## Configuring env varaible for JAVA
	set JAVA_HOME "/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
	##

	## Configuring my custom env variables
	set pds "/Users/proffapt/Desktop/college/PDS/Section_01/Assignments"
	##

	## Configuring autojump
	[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish
	##

	## Configuring thefuck
	thefuck --alias | source
	##

	## Invoking aliases
	source ~/Desktop/.config/fish/functions/aliases.fish

	###
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
