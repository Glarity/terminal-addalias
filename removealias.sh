#!/usr/bin/env bash

function removeCommand() {
	COMMAND="${*:2}"
	ENTRY="alias $1='$COMMAND'"
	if grep -Fxq "$ENTRY" ~/.bash_aliases
	then
		grep -v "$ENTRY" ~/.bash_aliases > temp; mv temp ~/.bash_aliases
		echo "Command alias removed! Restart terminal for effect."
	else
		echo "Command does not exist."
	fi
}

if [[ $# -ge 1 ]]; then
	removeCommand $*
else
	echo "Usage: removealias [ALIASNAME] [COMMAND]"
	echo "Example: removealias test git"
fi
