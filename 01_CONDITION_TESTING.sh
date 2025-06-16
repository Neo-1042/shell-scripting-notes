#!/bin/bash

# Syntax:  [ boolean-condition ]
# Example: [ -e /etc/passwd ]

# Test if a file exists, if two strings are equal, or if a number is greater than another
# -e exists: /some/path
# TRUE -> The command exits with a status of SUCCESS = 0
# FALSE -> The command exits with a status of something different than 0
[ -e /opt/var/lunaclient/uninstall.sh ]

[ STRING1 = STRING2 ]
[ STRING1 != STRING2 ]
[ -z STRING ] # TRUE if STRING is empty
[ -n STRING ] # TRUE if STRING is NOT empty

# Comparisson operators
[ a -eq b ] # a == b
[ a -ne b ] # a != b
[ a -lt b ] # a < b
[ a -gt b ] # a > b
[ a -le b ] # a <= b
[ a -ge b ] # a >= b

###################################################################################################
# IF statement
if [ condition-1 ]
then
	<command1>
	<command2>
	<command3>
elif [ condition-2 ]
then
	<command4>
else
	<command5>
fi

