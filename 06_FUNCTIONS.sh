#!/bin/bash

# Shell scripts are read and interpreted from top to bottom
# Good practice: declare and define all of your functions at the top of the script

# Don't repeat yourself = DRY
# Function = a block of a reusable code that performs an action and returns an exit status code

# Create a function

# 1
function function_name() {
	# This is the first way to declare a function
}

function_name_2() {
	# This is the second way to declare a function
}

# Calling functions. Do NOT use parentheses
function_name
function_name_2

# Declaring functions:

function now() {
	echo "Today is: $(date +%r)"
}
 
function greeting() {
	echo "Hello, user"
	now
}

$0 # The script itself, not a function name

# Sending data to a function as $-parameters:

function hello2() {
	echo "Hello, $1"
}

hello2 Rodrigo

# Parse through all of the parameters with $@
function hello3() {
	for NAME in $@
	do
		echo "Hello $NAME"
	done
}

hello3 Rodrigo Rafael Hurtado Garcia
###################################################################################################
