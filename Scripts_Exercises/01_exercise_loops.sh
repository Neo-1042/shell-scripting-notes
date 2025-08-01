#!/bin/bash

# [E1] Write a shell script that loops through the /etc/passwd file one line at a time.
# Prepend each line with a line number followed by a colon and then a space

LINE_NUM=1

while read LINE; do
	echo "${LINE_NUM} : $LINE"
	((LINE_NUM++))
done < /etc/passwd

echo "END"