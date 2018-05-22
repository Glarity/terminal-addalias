#!/usr/bin/env bash


cat ~/.bash_aliases | while read line; do
	CMDNAME=${line%=*}
	CMDNAME=${CMDNAME/"alias"}
	CMD=${line##*=}
	echo "Name:" $CMDNAME "CMD:" $CMD
done
