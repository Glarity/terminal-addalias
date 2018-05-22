#!/bin/bash

function addCommand() {
	local command="${*:2}"
	local entry="alias $1='${command}'"

	if grep -Fxq "${entry}" ~/.bash_aliases; then
		#TODO Check if name exists with different command
		echo "Command already exists."
	else
		echo ${entry} >> ~/.bash_aliases && source ~/.bash_aliases
		echo "Command alias added!"
	fi
}

if [[ $# -ge 1 ]]; then
	addCommand $@
else
	echo "Usage: addalias [ALIASNAME] [COMMAND]"
	echo "Example: addalias test git"
fi
