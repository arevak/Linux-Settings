# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -lh --color'
alias la='ls -lah --color'
alias lt='ls -lth --color'
alias lh='ls -lSh --color'

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# Prevent XOFF from being sent from keyboard but still allowing sofftware to send the commands
stty ixoff -ixon

if [ -f ~/git-completion.bash ]; then
	. ~/git-completion.bash
fi

# Importing previously existing (or overridden bashrc via .bashrc.local which is made from init.py
if [ -f ~/.bashrc.local ]; then
	. ~/.bashrc.local
fi

if which ctags >/dev/null; then
	function gentags {
		ctags -f ~/.vim/mytags/$1 -h \".php\" -R --exclude=\"\.git\" --totals=yes --tag-relative=yes --PHP-kinds=cfiv \
	--regex-PHP='/(abstract)?\s+class\s+([^ ]+)/\2/c/' \
	--regex-PHP='/(static|abstract|public|protected|private)\s+(final\s+)?function\s+(\&\s+)?([^ (]+)/\4/f/' \
	--regex-PHP='/interface\s+([^ ]+)/\1/i/' \
	--regex-PHP='/\$([a-zA-Z_][a-zA-Z0-9_]*)/\1/v/' \
	-R
	}
fi
