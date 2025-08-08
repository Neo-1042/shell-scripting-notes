#!/bin/bash

# PROCESS SUBSTITUTION (:O)

# Process substitution is a feature that allows you to use the output from a command as
# an input file for the while-read construct

while IFS= read -r line; do # -r : raw
	printf '%s\n' "$line"
done < <(cat /Users/rafael1642/GIT/Notes/shell-scripting-notes/exercises_shell/texto_prueba.txt)

echo "END"