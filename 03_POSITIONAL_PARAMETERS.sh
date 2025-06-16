#!/bin/bash

$ script.sh parameter1 parameter2 parameter3

# $0 = script.sh
# $1 = parameter1
# $2 = parameter2
# $3 = parameter3

USER=$1

echo "Executing script = $0"
echo "Archiving user = $USER"

# Lock the account
passwd -l $USER

# Create an archive of the home directory
tar -cf /archives/${USER}.tar.gz /home/${USER}

# Access all the positional parameters from $1 ... $N (last positional parameter)

for USER in $@
do
	echo "Archiving user = ${USER}"
done