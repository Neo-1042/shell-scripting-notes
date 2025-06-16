# GLOBAL VARIABLES
# By default, all variables are GLOBAL
# Variables must be defined befored used

GLOBAL_VAR=1
my_function # GLOBAL_VAR is available

function foo() {
	GLOBAL_VAR2=10 # This global variable does not yet exist
}
foo # GLOBAL_VAR2 is now available
###################################################################################################
# LOCAL VARIABLES
# Only functions can have local variables
# Can only be accessed within the function
# Good practice: use 'local' only within functions


# Create using the 'local' keyword
function locals_demo() {
	local LOCAL_VAR=7
	local VAR2=10
}

# Functions have an exit status, which can be explicitly or implicitly set
# Explicitly
return $RETURN_CODE
# Implicitly
# The exit status of the last command executed in the function

function bar() {
	local MY_VAR=20
	return 0
}

# Backing up a file
# basename /usr/bin/main.cpp   -> "main"
# $$ represents the PID = process id of the currently running shell script

function backup_file() {
	if [ -f $1 ]
	then
		local BACK="/tmp/$(basename ${1}).$(date +%F).$$" # PID
		echo "Backing up $1 to ${BACK}"
		cp $1 $BACK
	else
		# The file does not exist
		exit 1
	fi
}

backup_file /etc/hosts
if [ $? -eq 0 ]
then
	echo "Backup succeeded!"
else
	echo "Backup failed!"
	exit 1
fi

# $$ = PID. If the script runs multiple times on the same day, the name will be different, since
# the PID will be different.