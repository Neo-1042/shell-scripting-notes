#!/bin/bash

#================================================================================
# NAMED PIPES

# Unlike conventional unnamed pipes (|), named pipes make use of the filesystem.
# Named pipes are explicitly created using either:
mkfifo()
mknod()
# Any number of processes can access a named pipe by name:
# one process can open it for READING, and another process can open it for WRITING,
# at which point the pipe is instantiated and data can be transmitted through it
# like on a regular (unnamed) pipe.

# e.g., one can create a pipe and set up 'gzip' to compress things piped to it.
mkfifo my_pipe
gzip -9 -c < my_pipe > out.gz &

# In a separate process, independently, one could send the data to be compressed:
cat file > my_pipe

# At the point the second shell opens 'my_pipe' for writing in the process that will
# run 'cat', the read-only opening by the first shell is unblocked and both
# gzip and cat are then executed concurrently one feeding data to the other through the pipe.

# The named pipe can be deleted just like any other file:
rm my_pipe

#==============================================================================
# A named pipe can be used to transfer information from one application to another without
# the use of an intermediary temporary file. For example, you can pipe the output of gzip into
# a named pipe (here, out.gz, but it can be any *.gz):
mkfifo -m 0666 /tmp/namedPipe
gzip -d < out.gz > /tmp/namedPipe
# Then, load the data being decompressed on the fly into a MySQL table:

#--------------------------------------------------------------------#
# MySQL reminder:
# Start the MySQL DB local server:
sudo /usr/local/mysql/support-files/mysql.server start
# Start the interactive DB session:
sudo /usr/local/mysql/bin/mysql -u root -p
# Enter password:
mysql> LOAD DATA INFILE '/tmp/namedPipe' INTO TABLE tableName;
#--------------------------------------------------------------------#
# Without this named pipe, one would need to write out the entire uncompressed
# version of file.gz before loading it into MySQL.
# Writing temporary files is time-consuming, and results in more I/O usage and
# less free space on the hard drive.