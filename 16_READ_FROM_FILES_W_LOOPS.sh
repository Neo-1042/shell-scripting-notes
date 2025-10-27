#!/bin/bash

# while: read lines from a file

while read distro version release; do
	printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
		"$distro" \
		"$version" \
		"$release"
done < distros.txt # The redirection operator '<' feeds the while loop.
# The loop will use 'read' to input the fields from the redirected file.
# The 'read' command will exit after each line is read, with a
# 0 (zero) EXIT STATUS until the 'end-of-file' is reached.

# When the EOF of "distros.txt" is reached, the 'read' command will shoot
# a non-zero exit status, thereby terminating the loop.

# It's also possible to PIPE standard input into a loop.

echo "END"