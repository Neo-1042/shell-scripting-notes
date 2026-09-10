#!/bin/bash

$ script.sh parameter1 parameter2 parameter3

# $0 = this-script.sh
# $1 = parameter1
# $2 = parameter2
# $3 = parameter3

USER=$1

echo "Executing script = $0"
echo "Archiving user = $USER"

# Lock the account
passwd -l $USER

# Create an archive of the home directory of each user
tar -cf /archives/${USER}.tar.gz /home/${USER}

# This approach makes use of the current user executing the script:
tar -cf /archives/$(whoami).tar.gz /home/$(whoami)

# $@ --> To access all the positional parameters from $1 ... $N (last positional parameter)

for USER in $@
do
	echo "Archiving user = ${USER}"
done