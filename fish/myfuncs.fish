function gc --description "Cloning github directories"
	git clone https://github.com/$argv
end

function gt --description "Moving to directories seamlesly"
	cd $(autojump $argv)
end

function bts --description "Easily pushing bodhitree session updates to github"
	git add .
	git commit -m "session $argv"
	git push origin main
end

function asi --description "AppleStoreInstall - install software from apple store"
	mas install $(mas search $argv | grep -i "$argv" | fzf | awk '{print $1}')
end

function asu --description "AppleStoreUninstall - uninstall software from apple store"
	mas uninstall $(mas search $argv | grep -i "$argv" | fzf | awk '{print $1}')
end
