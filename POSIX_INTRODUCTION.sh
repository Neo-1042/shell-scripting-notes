#!/bin/sh
################################################
# UNIX was developed by AT&T in 1971
# IBM AIX, HP-UX, SunOS -> UNIX Wars :O
# 
# IEEE -> POSIX Standard in 1988.
# POSIX = Portable OS Interface X (from UNIX)
# POSIX defines the interface, not the internals.
# 
# Everything is a file. Thus, functions that work on files, work on everything
# open(), read(), write(), close()
# 
# FILE DESCRIPTORS
# 0 = stdin (keyboard)
# 1 = stdout (screen)
# 2 = stderr
# 3,4,5,... -> your files
# 
# PROCESSES AND NEW PROGRAMS
# 
# fork() + exec() --> how every shell command is born.
# When a program calls fork(), the OS replicates the PARENT PROCESS, thus creating
# a CHILD PROCESS that runs from exactly the same point when fork() was called.
# The child usually then calls exec() to become an independent program.
# 
# SIGNALS: HOW PROCESSES GET NOTIFIED
# 
# Signal Handler
# Ctrl + C (stop a program) -> SIGINT
# Nuclear Stop -> SIGKILL
# Bad Memory -> SIGSEGV
# Polite Termination -> SIGTERM
# 
# PIPES
# 
# Just 2 file descriptors: write end + read end.
ls | grep | sort | head
# 
# STREAMS
# 
# stdin  --> 0
# stdout --> 1
# stderr --> 2
#
# POSIX THREADS = pthreads
# 
# SHELLS
# 
# The POSIX shell is based on the original Bourne shell.
# Note*: neither bash nor zsh are POSIX-compliant. In contrast, sh and ksh are POSIX-compliant
# 
# POSIX FILE PERMISSIONS
# owner:group:others
# rwx = read, write, execute
# 
# ENVIRONMENT VARIABLES: How programs know where to look.
# 
PATH=/usr/bin
HOME=/neo_1042

# "Use PATH to find this command". PATH tells the shell where to find executables.
# /bin > /usr/local/bin > /usr/bin > /opt/bin

# Which OS's are POSIX-Compliant?
# 
# macOS
# Linux distros (mostly). Not officially certified, mainly because of the certification costs.
# FreeBSD
# OpenBSD
# Android (inherits ...)
# 
# WINDOWS: the 2016 game changer:
# WSL = Windows Subsytem for Linux

# POSIX is the foundation of the Modern Cloud.

# The POSIX PHILOSOPHY: small talls, big power.
# "Do one thing well. Compose them together"