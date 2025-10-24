#!/bin/bash

# IFS = Internal Field Separator

# Multiple words separated by one or more spaces become separate items on the input line for the
# 'read' command and are assigned to different variables.
# This behavior is controlled by a shell variable named IFS (Internal Field Separator)
# The default value of IFS contains: 
# space 
# tab t
# newline character \n, each of which will separate items from another. 

# We can adjust the value of IFS to control the separation of fields input to 'read'
# e.g. the /etc/passwd file contains lines of data that use the colon character (:) as a field separator.

# The following script we can use 'read' to input the contents of /etc/passwd separating by ":"

# read-ifs : read fields from a file

FILE=/etc/passwd

read -p "Enter a username : " user_name

file_info=$(grep "^$user_name:" $FILE)

if [ -n "$file_info" ] ; then
	IFS=":" read user pw uid gid name home shell <<< "$file_info"
	echo "User = '$user' "
	echo "UID = '$uid' "
	echo "GID = '$gid' "
	echo "Full Name = '$name' "
	echo "Home dir = '$home' "
	echo "Shell = '$shell' "
else
	echo "No such user '$user_name' " >&2
	exit
fi

echo "END"

# (Source: 'The Linux Command Line'-William Shotts)
# READ cannot be piped
echo "foo" | read # ERROR
# The $REPLY variable will appear empty.

# This is because of the way shells handle pipelines
# In bash and sh pipelines create SUBSHELLS.
# SUBSHELLS are copies of the shell and its environment that
# are used to execute the command in the pipeline.
echo "foo" | <command_in_SUBSHELL>

# In UNIX-like systems, subshells create copies of the environment
# processes to use while they execute. A subshell can NEVER alter
# the environment of the parent process.

# So, the variables created for the 'read' command after '|' are destroyed
# once the general process leaves that particular subshell.