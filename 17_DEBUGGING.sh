#!/bin/bash -x
# -x : prints commands as they execute
#
# Called an x-trace, tracing or print debugging
# Similar to running *.cmd with @echo on
# While using an interactive command line:
# set -x
# set +x # To stop debugging
#########################################################
# DEBUGGING WITH THE SHELL EXAMPLE (mind the shebang at the beginning)

TEST_VAR="test"
echo "$TEST_VAR"

echo "END"
#########################################################
# DEBUGGING with -e : Exit (immediately) on error
# If any command exits with an EXIT_STATUS != 0, then
# the execution of the script will immediately stop.
# SHEBANG:
#!/bin/bash -ex
#!/bin/bash -xe
#!/bin/bash -e -x
#!/bin/bash -x -e
#########################################################
# DEBUGGING with -v
# Prints shell input lines as they are read
# Prints everything before it is substituted and/or expanded.
# SHEBANG:
#!/bin/bash -v
#########################################################
# DEBUGGING with -vx
# -v : verbose
# prints everything before "${FOO}/*" substitution or expansion
# -x : x trace (DEBUG mode)
# Combining -vx will show exactly how a command is written vs
# how it is actually EXECUTED. Nice.

help set | less
# help <command> | less
#########################################################
#########################################################
# Using variables for debugging
# Manually debug a script
# Syntax highlighting
# Windows / Linux file types

# Example 1:
#!/bin/bash

DEBUG=true

if $DEBUG ; then
	echo "Debug Mode ON"
	set -x
else
	echo "Debug Mode OFF"
	set +x
fi

# Example 2 (equivalent as E1)
#!/bin/bash

DEBUG=true

$DEBUG && echo "Debug mode ON"

DEBUG=false

$DEBUG || echo "Debug mode OFF"

# Example 3. Use 'echo' as a variable for debugging

#!/bin/bash
DEBUG="echo"

$DEBUG ls

# Example 4. debug()
#!/bin/bash

function debug() {
	echo "Executing: $@" # Access all parameters passed to the function
	$@
}

debug ls

# Manual debugging:
# set -x
# Copy, paste and execute every single command of the script.
################################################
# PS Environment variables
$PS1 # Controls what is displayed for your terminal prompt

$PS4 # Controls what is displayed before a line when using the "-x" option
# The default value is "+"

rafael1642@MacBook-Air-de-Rafael shell-scripting-notes % set -x                                                                           
rafael1642@MacBook-Air-de-Rafael shell-scripting-notes % echo "hola"                                                                      
+/bin/zsh:15> echo hola
hola

# BASH VARIABLES
$BASH_SOURCE # The name of the script itself
$LINENO # Line number of the script
################################################
# Enabling x trace + setting a custom PS4 value
#!/bin/bash -x
PS4='+ ${BASH_SOURCE} : ${LINENO} : ${FUNCNAME[0]}()'
TEST_VAR="CODsito"
echo "$TEST_VAR"

function debug() {
	echo "Executing: $@"
	$@
}
debug ls

################################################
# CR/LF -> Windows
# LF -> Linux, macOS

cat -v script.sh # Shows the CR/LF characters as ^M

file script.sh

dos2unix script.sh # Converts a DOS file into a UNIX file
unix2dos script.sh # Converts a UNIX file into a DOS file