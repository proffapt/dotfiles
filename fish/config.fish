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

	## rust
	set -gx PATH "$HOME/.cargo/bin" $PATH

	## java
	set JAVA_HOME "/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

	## Custom env variables
	set pds "/Users/proffapt/Desktop/college/PDS/Section_01/Assignments"
    set PATH /Users/proffapt/Desktop/dotfiles/public/scripts $PATH ##scripts
    set PATH /Users/proffapt/Desktop/dotfiles/private/scripts $PATH ##scripts

	### Configuring autojump
	[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

	### Configuring thefuck
	thefuck --alias | source
end

## iterm2 shell integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
