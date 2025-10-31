#!/bin/bash -vx

# -v : verbose
# prints everything before "${FOO}/*" substitution or expansion
# -x : x trace (DEBUG mode)
# Combining -xe will show exactly how a command is written vs how it is
# actually EXECUTED. Nice.

TEST_VAR="Mario World"
echo "${TEST_VAR}"

# This lines will be printed as they come in the script
echo "END"