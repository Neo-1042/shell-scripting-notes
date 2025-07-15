#!/bin/bash

# Exercise:
# Write a shell script that displays one random number to the screen and
# also generates a syslog message with that random number. Use the
# "user" and the "info" facilities for your messages (HINT: use $RANDOM)
# Tag each syslog message with randomly and include the process ID. Generate 3 random numbers

function log_random() {
	TIMESTAMP=$(date +"%Y_%m_%d %T hrs")
	logger -i -t randomly "${RANDOMLY} My random number: $RANDOM" 
}