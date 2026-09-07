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
[ $a -eq $b ] # a == b
[ $a -ne $b ] # a != b
[ $a -lt $b ] # a < b
[ $a -gt $b ] # a > b
[ $a -le $b ] # a <= b
[ $a -ge $b ] # a >= b

# Arithmetic expansion is preferred (check POSIX compatibility)
(( a < b ))
(( a == b ))
(( a >= b ))
(( a > b ))
(( a <= b ))


i=0 ; j=10

while (( $i < 5 && $j > 5 )) ; do
	echo "i is $i and j is $j"
	((i++))
	((j++))
done

###################################################################################################
# IF statement
if [ condition_1 ]
then
	<command_1>
	<command_2>
	<command_3>
elif [ condition_2 ]
then
	<command4>
elif [ condition_3 ]
then
	<command_5>
else
	<command_6>
fi
###################################################################################################
