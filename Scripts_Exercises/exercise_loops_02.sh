#!/bin/bash

# E2] Write a shell script that asks the user for the number of lines they would like to display
# from the /etc/passwd file and display those lines

read -p "How many lines of /etc/passwd would you like to see? " USER_LINES
echo "USER_LINES = ${USER_LINES}"

LINE_COUNTER=1



# TODO: Look into the POSIX test commands = https://stackoverflow.com/questions/15534595/bash-scripting-multiple-conditions-in-while-loop
# TODO: How to group a numerical comparisson and the output of a command?

# Arithmetic Expansion
# (( $a < $b )) ---> For purely numerical conditions. Use the '$' to prevent errors
while (( $LINE_COUNTER <= $USER_LINES )) # read LINE 
do
	echo "Line: ${LINE_COUNTER} ${LINE}"
	((LINE_COUNTER++))
done < /etc/passwd

echo "END"