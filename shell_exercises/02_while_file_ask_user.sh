#!/bin/bash

# E2] Write a shell script that asks the user for the number of lines 
# they would like to display from the /etc/passwd file and display those lines.

read -p "How many lines of /etc/passwd would you like to see? " USER_LINES
echo "USER_LINES = ${USER_LINES}"

LINE_COUNTER=1

# TODO: Look into the POSIX test commands = https://stackoverflow.com/questions/15534595/bash-scripting-multiple-conditions-in-while-loop
# TODO: How to group a numerical comparisson and the output of a command?

# Arithmetic Expansion
# (( $a < $b )) ---> For purely numerical conditions. Use the '$' to prevent errors
# TO DO: How to put together the output of the read command with an arithmetic comparisson?
FILE="/Users/rafael1642/GIT/Notes/shell-scripting-notes/file_samples/texto_prueba.txt"

while read LINE ; do
	if [[ "$LINE_COUNTER" -gt "$USER_LINES" ]]; then
		break
	fi
	echo "Line: ${LINE_COUNTER} . Entry from file: ${LINE}"
	((LINE_COUNTER++))
done < "${FILE}"

echo "END"