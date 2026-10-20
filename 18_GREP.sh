#!/bin/bash

# GREP = Global Regular Expression Print

# The standard syntax of the 'grep' command is
grep [options] [pattern] [file...]

# The most critical flags you will use are:
# ==================================================================== #
-i # Ignores UPPERCASE or lowercase
grep -i "error" app.log

-v # Invert march (returns lines that do NOT MATCH)
grep -v "DEBUG" app.log

-r or -R # Search recursively through directories
grep -r "function init()" ./src/

-l # list only the FILENAMES containing the match
grep -rl "TODO" ./project/

-n # Show the line number of each match
grep -n "main" script.sh

-c # Count the number of matching lines
grep -c "Failed login" auth.log

-E # Use Extended Regex (like egrep)
# egrep is a legacy command that does the exact same thing as grep -E
# However, in modern versions of GNU, egrep has officially been deprecated.

# NOTE: For more advanced filtering, UNIX users typically pipe the output of grep into awk (for column-based extraction) or sed (for stream editing and replacement)

# ====================================================== #
# egrep = grep -E
# BRE vs ERE
# ====================================================== #
# Standard grep uses BRE = Basic Regular Expressions, where characters like:
# | ? + (  )
# are treated as literal text unless you ESCAPE them to unlock their special regex powers.

# However, grep -E uses Extended Regular Expressions (ERE):
# In ERE, those characters are treated as logical operators natively, so you don't need to
# escape them. Here is how to compare when searching for "car" OR "dog":

# Standard grep (BRE) requires the backslash to make the pipe act as "OR"
grep "cat\|dog" pets.txt

# grep -E (ERE) understands the pipe natively:
grep "cat|dog" pets.txt

# Clean example:
grep -e "(cat|dog)s?"