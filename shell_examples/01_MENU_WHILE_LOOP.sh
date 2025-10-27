#!/bin/bash

echo "============================================================================"
echo "A menu-driven system information program"
echo "============================================================================"

DELAY=3 # Number of seconds to display results

while [[ "$REPLY" != 0 ]]; do
	clear
	cat <<- _EOF_
		Please Select:

		1. Display System Information
		2. Display Disk Space
		3. Display Home Space Utilization
		0. QUIT
	_EOF_
	read -p "Enter Selection [0-3] > "
	if [[ "$REPLY" =~ ^[0-3]$ ]]; then
		if [[ "$REPLY" == 1 ]]; then
			echo "Hostname = $(hostname)"
			uptime
			sleep "$DELAY"
		fi
		if [[ "$REPLY" == 2 ]]; then
			df -h # Disk free -human readable
			sleep "$DELAY"
		fi
		if [[ "$REPLY" == 3 ]]; then
			if [[ "$(id -u)" -eq 0 ]]; then
				echo "Home Space Utilization (All users)"
				du -sh /home/* # Operation not permitted
			else
				echo "Home Space Utilization ($USER)"
				du -sh "$HOME" # Operation not permitted
			fi
			sleep "$DELAY"
		fi
	else
		echo "Invalid entry"
		sleep "$DELAY"
	fi
done


echo "============================================================================"
echo "END"
echo "============================================================================"