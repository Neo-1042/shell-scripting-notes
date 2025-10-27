#!/bin/zsh

while [ CONDITION_IS_TRUE ]
do
	command1
	command2
	command3
done

# If and only if the command returns an EXIT STATUS = 0 (SUCCESS), then execute the code inside the DO
while [ $(command) ] 
do
	command1
	command2
	command3
done

# In some cases, you want an infinite loop:
# For example, when you want to setup a service or daemon

while true
do
	command1
	command2
	sleep 100 # Pause the execution of the script for 100 seconds
done
===================================================================================================
# Real examples of while loops:

# Creating 5 folders:
INDEX=1

while [ $INDEX -lt 6 ]; do
	echo "Creating project-${INDEX}"
	mkdir /usr/local/project-${INDEX}
	((INDEX++)) # ARITHMETIC EXPANSION
done

# Prompt the user for his/her correct name

while [ "$CORRECT" != "y" ] ; do
	read -p "Enter your name: " NAME
	reap -p "Is ${NAME} correct? " CORRECT
done
echo "END"

===================================================================================================
# Script performing a BACKUP process
# Wait until the application server is off the network before it continues the backup.

while ping -c 1 app1 > /dev/null # STD OUTPUT goes to the Black Hole
do
	echo "app1 is still running ..."
	sleep 5
done

echo "app1 is down, continuing backup."
===================================================================================================
# Reading a file, line-by-line
# The FOR LOOP does NOT work properly here, since it will read word for word.
# To actually read line-by-line, you have to use a WHILE LOOP

LINE_NUM=1

while read LINE; do
	echo "${LINE_NUM} : ${LINE}"
	((LINE_NUM++))
done < /etc/fstab # Example file
===================================================================================================
# Read from the output of a command, instead of a file:
grep xfs /etc/fstab | while read LINE
do
	echo "xfs: ${LINE}"
done
===================================================================================================
# The read command can read from multiple variables:

FS_NUM=1
grep xfs /etc/fstab | while read FS MP REST # The last variable (REST) contains the rest of the words from that line
do
	echo "${FS_NUM}: file system: ${FS}"
	echo "${FS_NUM}: mount point: ${MP}"
	((FS_NUM++))
done
===================================================================================================
# BREAK: Exit a LOOP before its normal ending use, but it does not end the script

while true; do
	read -p "1: Show disk usage. 2: Show uptime." CHOICE
	case "$CHOICE" in
		1)
			df -h # display free disk space, -h = human readable
			;;
		2)
			uptime
			;;
		*)
			break # SUPER IMPORTANT; otherwise, you won't normally exit the while loop
			;;
    esac
done
===================================================================================================
# CONTINUE: skip this iteration and continue with the execution of the loop
# List 1 mysql database per line of output, which is piped into the while loop

mysql -BNe 'show databases' | while read DB
do
	db-backed-up-recently $DB
	if [ "$?" -eq "0" ] ; then
		continue
	fi
	backup $DB
done
===================================================================================================
# Choosing the right method for grouping the conditions:

[[ ... ]] # General-purpose scripting in modern Bash
[ ... ] # Maximum portability across different shells
(( $a < $b )) # For purely numerical conditions


===================================================================================================
# PROCESS SUBSTITUTION (:O)

# Process substitution is a feature that allows you to use the output from a command as
# an input file for the while-read construct

while IFS= read -r line; do # -r : raw
	printf '%s\n' "$line"
done < <(cat /Users/rafael1642/GIT/Notes/shell-scripting-notes/exercises_shell/texto_prueba.txt)
===================================================================================================

read -p "Enter a number of lines to be displayed: " USER_LINES

while read LINE ; do
	echo "READING FROM FILE"
	

===================================================================================================
# Source: "The Linux Command Line" - William Shotts
# Chapter 29: FLOW CONTROL: LOOPING WITH WHILE/UNTIL

# Construct a program to repeat a menu display until the user chooses
# to exit the program.

#!/bin/bash

# while-count: display a series of numbers

COUNT=1

while [[ "$COUNT" -le 5 ]]; do
	echo "$COUNT"
	COUNT=$((COUNT + 1))
done
echo "Finished"

# The general syntax of the WHILE loop is the following:
while <commands1>; do
	<commands2>
done

# Like 'if', 'while' evaluates the exit status of a list of commands.
# As long as the exit status == 0, it performs the commands inside the loop.
# The 'while' command evaluates the exit status of the
#    [[]] compound command.
# At the end of each cycle, the [[]] is repeated and its exit status evaluated
# once more. 
# In the previous example, when COUNT hits 5, the command
[[ "$COUNT" -le 5 ]] # Returns 1
===================================================================================================
# See example "shell_examples/01_MENU_WHILE_LOOP.sh"
echo "END"
===================================================================================================