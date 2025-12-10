#!/bin/bash -x

# Exercise 1: Write a shell script that exits on error and displays commands
# as they will execute, including all expansions and substitutions.
# Use 3 ls commands in your script. Make the first one succeed, the second one fail,
# and the third one succeed.

# Exercise 2: Modify the script so that the script continues on error (remove -e)
echo "START"

# ls 1
cd /usr/local
ls
# ls 2 wrong
ls /usr/local/wrong
# ls 3
cd /usr/local/mysql
ls

echo "END"