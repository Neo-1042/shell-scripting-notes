#!/bin/bash

echo "Renaming all jpg files in $(pwd)"

# setting nullglob
shopt -s nullglob

for FILE in *.jpg ; do
	FECHA="$(date +%Y%m%d)"
	mv $FILE "${FECHA}-${FILE}"
done

# unset nullglob
shopt -u nullglob
