function gc --description "Cloning github directories"
	git clone https://github.com/$argv
end

function gt --description "Moving to directories seamlesly"
	cd $(autojump $argv)
end
