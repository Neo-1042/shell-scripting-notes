#!/bin/bash -x

echo $0 ; echo $SHELL

# Modifying the PS4 environment variable

PS4='+ ${BASH_SOURCE} : ${LINENO} : ${FUNCNAME[0]} () '

function debug() {
	echo "Executing: $@"
	$@
}

debug ls

echo "END"