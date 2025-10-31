#!/bin/bash -x
# -x : prints commands as they execute
#
# Called an x-trace, tracing or print debugging
# Similar to running *.cmd with @echo on
# While using an interactive command line:
# set -x
# set +x # To stop debugging
#########################################################
# DEBUGGING WITH THE SHELL EXAMPLE (mind the shebang)

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
# Combining -xe will show exactly how a command is written vs how it is
# actually EXECUTED. Nice.

help set | less
# help <command> | less