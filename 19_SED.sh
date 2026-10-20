#!/bin/bash

# sed = Stream Editor
# A Stream is data that travels from:
# 	One process through another through a pipe (|)
# 	One file to another as a redirect (>)
#	One device to another

# STDIN  -> Standard Input Stream
# STDOUT -> Standard Output Stream
# STDERR -> Standard Error Stream

# Streams are typically textual data.
# sed can be used to substitute some text for another text, remove lines or append lines.

# sed is used PROGRAMMATICALLY, not interactively (like vim or emacs).
############################################################################################
# The most common use of 'sed' is to use it as a "find and replace" command-line tool.
