# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -l --color'
alias la='ls -la --color'

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
