# Look for string "ANTES" in the fils and show the line number
# This is case sensitive by default
grep -n "ANTES" | /path/to/file.txt
# Case insensitive
grep -i "ANTES" | /path/to/file.txt
# Count occurrences
grep -c "ANTES" | /path/to/file.txt


# Find out which users belong to a given group
getent group webgroupx