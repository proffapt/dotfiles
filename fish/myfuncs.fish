function gc --description "Cloning github directories"
	git clone https://github.com/$argv
end

function gt --description "Moving to directories seamlesly"
	cd $(autojump $argv)
end

function bts --description "Easily pushing bodhitree session updates to github"
	bt
	git add .
	git commit -m "session $argv"
	git push origin main
	cd -
end

function asi --description "AppleStoreInstall - install software from apple store"
	mas install $(mas search $argv | grep -i "$argv" | fzf | awk '{print $1}')
end

function asu --description "AppleStoreUninstall - uninstall software from apple store"
	sudo mas uninstall $(mas list | awk '{print $1 " - "$2}' | fzf | awk '{print $1}')
end

function - --description "Using the bash shell to execute the command instead of fish"
	bash -c '$argv'
end
