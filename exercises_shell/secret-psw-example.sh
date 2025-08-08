#!/bin/bash

echo "Example 1: "
echo "Current shell script: $0"
echo "Process reports shell as: $(ps -p $$ -o comm=)"

if read -t 10 -sp "Enter secret passphrase:  " secret_pass ; then
	echo -e "\nSecret passphrase = '${secret_pass}'"
else
	echo -e "\nInput timed out" >&2
	exit 1
fi

echo "CONTINUE"
echo "Example 2: (needs a BASH extension)"

# Read default with -i <default> option
# -e : use ReadLine to handle input
# -i string1 : Use string as a default reply if the user simply presses ENTER (-e is required)
# WATCH OUT: -i is NOT A STANDARD SHELL FEATURE: it's a bash-specific extension that only
# works if Bash was compiled with readline support

#read -e -p "What is your user name? " -i $USER
#echo "You answered: ${REPLY}" # REPLY is the default variable if no other var name is given

echo "END"