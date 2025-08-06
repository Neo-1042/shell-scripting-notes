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
while [[ $(read LINE) && $LINE_COUNTER -le $USER_LINES ]]  
do
	echo "Line: ${LINE_COUNTER} . L from file: ${LINE}"
	((LINE_COUNTER++))
done < /Users/rafael1642/GIT/Notes/shell-scripting-notes/Scripts_Exercises/texto_prueba.txt

echo "END"