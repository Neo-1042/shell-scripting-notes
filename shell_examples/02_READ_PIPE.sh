#!/bin/bash

# while-read: read lines from a file by using '|'
RUTA="/Users/rafael1642/GIT/Notes/shell-scripting-notes/file_samples/distros.txt"
sort -k 1,1 -k 2n ${RUTA} | while read distro version release; do
	printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
		"$distro" \
		"$version" \
		"$release"
	done

echo "END"