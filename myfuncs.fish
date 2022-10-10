function gc --description "Cloning github directories"
	git clone https://github.com/$argv
end

function gt --description "Moving to directories seamlesly"
	cd $(autojump $argv)
end

function n --description "Text editor, with my touch"
	if $argv=*.sh then 
		touch $argv && chmod +x $argv && nvim $argv
	else
		nvim $argv
	end
end
