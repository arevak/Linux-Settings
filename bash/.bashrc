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
alias tmux='tmux -2'

# Prevent XOFF from being sent from keyboard but still allowing sofftware to send the commands
stty ixoff -ixon

# git autocompletion
if [ -f ~/git-completion.bash ]; then
	. ~/git-completion.bash
fi

# tmux autocompletion
#if [ -f ~/tmux-completion.bash ]; then
#	. ~/tmux-completion.bash
#fi
if [ -f ~/tmux-sessions.bash ]; then
	. ~/tmux-sessions.bash
fi

# 256 color for putty
if [[ "$TERM" != "screen-256color" ]]
then
    export TERM='xterm-256color'
fi

# Importing previously existing (or overridden bashrc via .bashrc.local which is made from init.py
if [ -f ~/.bashrc.local ]; then
	. ~/.bashrc.local
fi

# Enforce my prompt
PS1='[\t \u@\h \W$(__git_ps1 " (%s)")]\$ '
export PATH=$PATH:~/bin

if which ctags >/dev/null; then
	function gentagsPHP {
		ctags -f ~/.vim/mytags/$1 -h \".php\" -R --exclude=\"\.git\" --totals=yes --tag-relative=yes --PHP-kinds=cfiv \
	--regex-PHP='/(abstract)?\s+class\s+([^ ]+)/\2/c/' \
	--regex-PHP='/(static|abstract|public|protected|private)\s+(final\s+)?function\s+(\&\s+)?([^ (]+)/\4/f/' \
	--regex-PHP='/interface\s+([^ ]+)/\1/i/' \
	--regex-PHP='/\$([a-zA-Z_][a-zA-Z0-9_]*)/\1/v/' \
	-R
	}

    function gentagsPerl {
        ctags -f tags --exclude=.svn --exclude='*~' --languages=Perl --langmap=Perl:+.t -R *
    }
fi
export PATH=/usr/local/bin:$PATH
