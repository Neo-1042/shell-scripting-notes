#!/bin/bash

# UNTIL demo. Display a series of numbers

# Reminder:
read -p "Hello, user. Enter a number from 3 to 20: " # is saved in ${REPLY}

COUNTER=1

until [[ "$COUNTER" -gt "$REPLY" ]]; do
	echo "$COUNTER"
	((COUNTER++))
done

echo "END"