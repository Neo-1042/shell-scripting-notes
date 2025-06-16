#!/bin/zsh

echo "For Loops"

for VAR_NAME in item1 item2 item3
do
	<command1>
	<command2>
	<command3>
done

for COLOR in red green blue yellow
do
	echo "Color = $COLOR"
done

# Store the colors like this:
COLORS="red green blue yellow"

for COLOR in $COLORS
do
	echo "Color = $COLOR"
done

# Rename all of the files that end in *.jpg
PICTURES=$(ls *jpg)
DATE=$(date +%F) # 2025-05-21

for PICTURE in $PICTURES
do
	echo "Renaming ${PICTURE} to $(date)-${PICTURE}"
	mv ${PICTURE} ${DATE}-${PICTURE} # image.jpg -> 2025-05-21-image.jpg
done

