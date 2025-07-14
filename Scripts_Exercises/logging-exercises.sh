#!/bin/bash

# Exercise 1:
# Write a shell script that displays one random number to the screen and
# also generates a syslog message with that random number. Use the
# "user" and the "info" facilities for your messages (HINT: use $RANDOM)

function log_random() {
	logger -i -t RRHG "My random number: $RANDOM" 
}