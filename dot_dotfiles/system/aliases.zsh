#!/bin/sh
# colorls is a better ls tool
if which colorls >/dev/null 2>&1; then
	alias ls='colorls'
	alias l='colorls -la --gs'
	alias la='colorls -laa --gs'
	alias ll='colorls -l --gs'
else
	alias ls="ls -F --color"
	alias l="ls -lAh"
	alias la="ls -A"
	alias ll="ls -l"
fi

alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias less="less -r"

alias croot='cd "$(git rev-parse --show-toplevel)"'

# open, pbcopy and pbpaste on linux
if [ "$(uname -s)" != "Darwin" ]; then
	if [ -z "$(command -v pbcopy)" ]; then
		if [ -n "$(command -v xclip)" ]; then
			alias pbcopy="xclip -selection clipboard"
			alias pbpaste="xclip -selection clipboard -o"
		elif [ -n "$(command -v xsel)" ]; then
			alias pbcopy="xsel --clipboard --input"
			alias pbpaste="xsel --clipboard --output"
		fi
	fi
	if [ -e /usr/bin/xdg-open ]; then
		alias open="xdg-open"
	fi
fi
alias lilith="~/Java/lilith-8.3.0/bin/lilith 2>&1 > /dev/null &"
alias g="./gradlew"
alias reload!='exec "$SHELL" -l'
