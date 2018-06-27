# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -n "$SSH_CLIENT" ]
	then
		text="ssh"
		tty -s && export PS1="\[\033[38;5;4m\][\[$(tput sgr0)\]\[\033[38;5;2m\]\$?\[$(tput sgr0)\]\[\033[38;5;4m\]] \[\033[38;5;4m\][\[$(tput sgr0)\]\[\033[38;5;2m\]\${text}\[$(tput sgr0)\]\[\033[38;5;4m\]] \[$(tput sgr0)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;4m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;4m\]:\[$(tput sgr0)\]\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi

alias ssh='ssh -q -o StrictHostKeyChecking=no'
alias prettyjson='python3 -m json.tool | pygmentize -f terminal256 -l json -O style=monokai'
