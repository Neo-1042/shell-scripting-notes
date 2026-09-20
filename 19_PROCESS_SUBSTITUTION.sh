#!/bin/bash
#
# PROCESS SUBSTITUTION
# https://medium.com/@joewalnes/handy-bash-feature-process-substitution-8eb6dce68133

# Motivation: comparing 2 versions of a file:
curl http://somesite/file1.txt > file1.txt
curl http://somesite/file2.txt > file2.txt
diff file1 file2

# Process Substitution version:
diff <(curl http://somesite/file1.txt) <(curl http://somesite/file2.txt)

# Process substitution gives you similar capabilities to piping,
# except piping only allows you to pipe the output from a single command into another.
# In the 'diff' scenario, we need to pipe the output from multiple commands into
# another. 
# Think of f(x1, x2, x3) instead of just f(x)
# diff(curl1, curl2) is a multi-variable function.

# The general syntax for using process substitution is this:
accepts-filenames <(writes-output)

# Behind the scenes, when Bash sees the process substituion <(...)
# it will create a temporary file descriptor which it uses as the filename and pipe
# output from the other process into it.

# When to use Process Substitution?
# If a regular pipe will do, just do that. However, you might need PS when:
# 
# 1] You need to feed multiple outputs into a single program: diff(curl1, curl2).
# 2] You need to feed output from a program into a program that expects input files,
#	but cannot read from stdin.
# 3] You are using temporary files.

# PARALLELIZATION

# One key advantage of using process substitution is that Bash will automatically
# parallelize your tasks. So, when coding:
diff <(curl http://somesite/file1.txt) <(curl http://somesite/file2.txt)
# Bash will run both those curl commands in parallel.