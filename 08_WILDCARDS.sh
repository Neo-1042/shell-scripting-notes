#!/bin/bash
########################
#       WILDCARDS      #
########################

# A character or a string used for pattern matching
# Wildcards are also called 'glob' or 'glob patterns'

# Globbing = the act the wildcard pattern into a list of files and/or directories

# Wildcards can be used with most commands (ls, rm, cp, etc.)

* # matches zero or more characters
*.txt
a*
a*.txt

? # matches exactly one character
?.txt
a?
a?.txt

# Character classes are used to create very specific search patterns []
# Matches any (one) of the characters included between the brackets. 
[aeiou]
ca[nt]* # can, cat, candy, catch
[!aeiou]* # find all the files that do NOT start with a vowel

# Create a range in a character class
[a-g]* # Matches all files that start with a,b,c,d,e,f or g.
[3-6]* # Matches all files that start with 3,4,5 or 6

# Pre-defined named character classes:
[[:alpha:]] # a-z or A-Z
[[:digit:]] # 0-9
[[:alnum:]] # a-z or A-Z and 0-9
[[:lower:]] # a-z
[[:upper:]] # A-Z
[[:space:]] # spaces, tabs and new line characters

# Escaping wildcard syntax:
\?
\*
# Match all the files that end with a question mark:
*\?
# done?, this_file?
###################################################################################################
# Examples

ls *.php # the wildcard * expanded all of those results and past them to the ls command
ls a.php b.php y.php z.php

ls a*
ls a*.txt

ls ? # Exactly one character in length
ls ?? # 2 characters
ls ??? # 3 characters

ls ????.php

ls -ltrh a*

ls c[aeiou]t # 1 or all the characters inside [] must match

ls [a-d]*

ls *[0-9]

mv *.txt notes
###############################################################################################################
mv *.mp3 music/

ls ??
rm ??
####################################################
#Script examples
####################################################
####################################################
cd /var/www/
cp *.html /var/www-just-html
####################################################
cd /var/www/
for FILE in *.html # Expand as a list of HTML files
do
	echo "Copying $FILE... "
	cp $FILE /var/www-just-html
done
####################################################
# Better:
for FILE in /var/www/*.html
do
	echo "Copying $FILE ..."
	cp $FILE /var/www-just-html
done
####################################################
touch test.html # cp NUL > C:\Folder\test.html | WINDOWS CMD
####################################################
# The command:
date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S"
# will display:
DATE: 1987-11-21
TIME: 13:36:16

# Thus, the command we are looking for to display 'YYYYMMDD' is:
date "+%Y%m%d"
20250608
# Exercise 1
# Write a shell script that renames all *.jpg files to begin with today's date in the following format:
# YYYYMMDD. For example, "my_cat.jpg" will be renamed to "20250608-my_cat.jpg"

#!/bin/bash

echo "Renaming all jpg files in $(pwd)"

# setting nullglob
shopt -s nullglob

for FILE in *.jpg
do
	FECHA="$(date +%Y%m%d)"
	mv $FILE "${FECHA}-${FILE}"
done

# unset nullglob
shopt -u nullglob

# Extra credit: make sure to gracefully handle instances where there are no "*.jpg" files in the current
# 	directory. Hint: man bash and read the section on the nullglob option
# Enabling the shell's nullglob option is the solution:
shopt -s nullglob # set
shopt -u nullglob # unset
###################################################################################################
# Exercise 2
