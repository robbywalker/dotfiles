if [ ! -d /usr/local/git/bin ]; then
	echo 'You should install the latest git'
else
	PATH="/usr/local/git/bin:$PATH"
fi

alias g='git'
alias pull='git pull --rebase'
alias push='git pull --rebase && git push'
git config --global alias.s status
