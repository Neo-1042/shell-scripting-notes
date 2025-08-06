#!/bin/bash



# The 'read' builtin command is used to read a single line of standard input.
# This command can be used to read keyboard input or, when redirection is employed,
# a line of data from a file. Syntax:

# read [-options] [variable...]

# Read multiple values from the keyboard

# -n: suppresses the trailing newline on output
echo -n "Enter one or more values: "
read x1 x2 x3 x4 # x4 will hold the rest of the input

echo "x1 = ${x1}"
echo "x2 = ${x2}"
echo "x3 = ${x3}"
echo "x4 = ${x4}"

read -p "Enter more information: "
# Automatically saved on ${REPLY}

echo "END"

# If no variable name is supplied, the shell variable ${REPLY} contains the line of data

# Some options for the 'read' command:

# -p  : prompt
# -a ARRAY : Assign the input to 'ARRAY'
# -e  : use Readline to handle input. This permits input editing in the same manner as the command line
# -r  : raw mode. Do not interpret \n or \t and so on.
# -s  : silent mode (passwords)
# -ei string1 : Use string1 as default reply if the user simply presses ENTER.
# -t seconds : timeout. Terminate input after <seconds> seconds.




###################################################################################################
# Side note: if umask = 0022, files with 'touch' are created with '544' permissions (rw-r--r--)
# Running "chmod +x file.sh", permissions will transform to '755', I think it's better to have '750'