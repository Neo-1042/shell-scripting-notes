#!/bin/bash

# EXIT STATUS = RETURN CODE
# Every command returns an EXIT STATUS
# 0 = SUCCESS
# 1-255 ERROR
# Use 'man' or 'info' to find out meaning of exit status

# The special variable $? contains the return code of the previously executed command
echo "$?"

HOST="google.com"

ping -c 1 $HOST # "-c 1" tells ping to send 1 packet
RETURN_CODE_PING=$?

if [ "$RETURN_CODE_PING" -eq "0" ]
then
	echo "$HOST reachable"
else
	echo "$HOST unreachable"
fi

###################################################################################################
# && = AND
# || = OR
###################################################################################################
# Execute the cp command only if the first command SUCCEEDS
mkdir /tmp/bak/ && cp test.txt /tmp/bak/ 

# Execute the second cp command ONLY if the first cp command FAILS
cp test.txt /tmp/bak/ || cp test.txt /tmp

ping -c 1 $HOST || echo "Host $HOST is unreachable"

echo "command 1" ; echo "command 2"

# Shell scripts also return exit status:

EXIT 0
EXIT 1
EXIT 2
...
EXIT 255

# If no EXIT status is specified, the exit status code of the last executed command is returned.

ping -c 1 -w 1 amazon.com # Timeout = 1 second
ping -c 1 amazon.com.bluxd # Exit status = 2
man ping
###################################################################################################
mkdir /tmp/my_folder/ && cp -v /etc/rhmeow/ /tmp/json/tlm/ # -v = verbose
# mkdir: cannot create directory; no such file or directory

mkdir -p /tmp/my_folder # -p = parent

hostname ; uname ; uptime ;
###################################################################################################
# Exercise 1

#!/bin/bash

echo "This script will exit with a 0 exit status"
exit 0

# Exercise 2
# Accept a file or directory name as an argument. Have the script report if it is a 
# regular file (exit status 0), a directory (1), or other type of file (2)
read -p "Give me a file or directory name:" NAME

# -f : regular file exists
# -d : directory exists
if [ -f $NAME ]
then
	echo "This is a regular file"
	exit 0
elif [ -d $NAME ]
	echo "This is a directory"
	exit 1
else
	echo "Other type of file"
	exit 2

# Exercise 3

cat /etc/shadow
CODE=$?

if [ $CODE -eq 0 ]
then
	echo "Command succeded"
	exit 0
else
	echo "Command failed"
	exit 1