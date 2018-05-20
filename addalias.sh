#!/usr/bin/env bash

function addCommand() {
	COMMAND="${*:2}"
	ENTRY="alias $1='$COMMAND'"
	if grep -Fxq "$ENTRY" ~/.bash_aliases
	then
		#TODO Check if name exists with different command
		echo "Command already exists."
	else
		echo $ENTRY >> ~/.bash_aliases
		echo "Command alias added! Restart terminal for effect."
	fi
}

if [[ $# -ge 1 ]]; then
	addCommand $*
else
	echo "Usage: addalias [ALIASNAME] [COMMAND]"
	echo "Example: addalias test git"
fi
