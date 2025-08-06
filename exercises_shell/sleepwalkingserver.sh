#!/bin/bash

# Practice Exercise 1
# Create a startup script for an application called 'sleepwalkingserver' (provided below)
# The script should be named 'sleepwalking' and accept "start" and "stop" as arguments.
# If anything other than "start" or "stop" is provided as argument, display a usage statement:
# 'Usage: sleepwalking start | stop' and terminate the script with an exit status of 1

# To start the sleepwalkingserver shell, use the command:
# ./sleepwalkingserver start
# To stop the sleepwalkingserver shell, use:
# kill $(cat ./sleepwalkingserver.pid)

PID_FILE="/Users/rafael1642/GIT/Notes/shell-scripting-notes/Scripts_Exercises/sleepwalkingserver.pid"
trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM # What are these? :o
echo "$$" > $PID_FILE # prints the current PID to the PID_FILE

while true
do
	:
done