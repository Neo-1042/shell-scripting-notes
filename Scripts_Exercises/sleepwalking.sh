#!/bin/bash

# Script to start/stop sleepwalkingserver

echo $0
echo $(whoami)

USER_OPTION=$1

case "$USER_OPTION" in
	start|START)
		/Users/rafael1642/GIT/Notes/shell-scripting-notes/Scripts_Exercises/sleepwalkingserver.sh
	;;
	stop|STOP)
		kill $(cat /Users/rafael1642/GIT/Notes/shell-scripting-notes/Scripts_Exercises/sleepwalkingserver.pid)
	;;
	*)
		echo "Usage: $0 start|stop"
		exit 1
	;;
esac