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

# Script performing a BACKUP process
# Wait until the application server is off the network before it continues the backup.

while ping -c 1 app1 > /dev/null # STD OUTPUT goes to the Black Hole
do
	echo "app1 is still running ..."
	sleep 5
done

echo "app1 is down, continuing backup."