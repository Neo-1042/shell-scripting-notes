#!/bin/bash -xe
# -x: x trace (debug)
# -e: exit on error

FILE_NAME="/not/here"
ls $FILE_NAME
echo $FILE_NAME

### ls: cannot access /not/here: No such file or directory