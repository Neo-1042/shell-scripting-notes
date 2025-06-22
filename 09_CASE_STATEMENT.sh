#!/bin/bash

if [ "$VAR" = "one" ]
then
	echo "1"
elif [ "$VAR" = "two" ]
then
	echo "2"
elif [ "$VAR" = "three" ]
then
	echo "3"
else
	echo "Not a valid option"
fi

# More readable by using 'case' statements. Example
# End the pattern you want to compare VAR with, using a right parenthesis )
# The execution of the case statement will stop when a double semi-colon ;; is reached
case "$VAR" in
	pattern_1)
		echo "First pattern matches VAR"
	;;
	pattern_2)
		echo "Second pattern matches VAR"
	;;
	pattern_N)
		echo "Pattern N matches VAR"
	;;
esac

# Example. Script that controls the behavior (start/stop/restart) of a program
# Patterns are case-sensitive
case "$1" in
	start)
		/usr/sbin/sshd
	;;
	stop)
		kill $(cat /var/run/sshd.pid) # pid = process id
	;;
esac
# If there are no matches, the case statement will not execute, and the script will simply continue

# The next example will use the wildcard pattern *) to match anything:
# Anything other than 'start' or 'stop' will go to the wildcard
# start|START => The pipe | is used as an OR for the patterns,
case "$1" in
	start|START) # Allows the user to send the parameter in all caps
		/usr/sbin/sshd
	;;
	stop|STOP) # Allows the user to send the parameter in all caps
		kill $(cat /var/run/sshd.pid) # pid = process id
	;;
	*)
		# In this case, the script will prompt the user on how to properly use this shell script
		echo "Usage: $0 start|stop" # $0 has the value of the current script.sh running
		exit 1
	;;
esac

