# RHEL = Red Hat Enterprise Linux

cd /opt/ # Optional application software packages
# Contains add-on application software packages that are not part of the core OS
# Used by third-party vendors to install their software in a self-contained directory
# e.g. /opt/google/

cd /etc/opt/ # Configuration files for /opt/ applications
# Stores configuration files for applications installed in /opt/
# Keeps configuration separate from binaries/data, following the
# Filesystem Hierarchy Standard (FHS)

# More about the /etc/ directory:
# When UNIX was first developed, /etc/ was simply a miscellaneous system configuration files
# that did not clearly belong elsewhere.
# Over time, its role became more defined as the central location for:
# SYSTEM-WIDE CONFIGURATION FILES
# Examples:
cd /etc/network/ ; cd /etc/systemd/ ; cd /etc/opt/
###################################################################################################
# URL = https://www.youtube.com/watch?v=uCqOgWR0g2o
# Channel = Bread on Penguins
###################################################################################################
# Disk storage -> File System Format -> Directory Structure
# (raw bytes)  ->  (FAT32, ext4) 	 -> (/usr/bin/.../)

# A typical GNU/Linux installation would contain:

/
	bin -> usr/bin
	boot
	dev
	etc
	home
	lib -> usr/lib
	lib64 -> usr/lib
	logs
	lost+found
	mnt
	opt
	proc
	root
	run
	sbin -> usr/bin
	srv
	sys
	tmp
	usr
	var
# Example: 
# The DB server of MySQL is installed in: /usr/local/mysql/support-files/mysql.server


# /bin/ -> usr/bin => Contains commands used by the system administrator and users
# 	  There must be no subdirectories under /bin/
# 	  Shells are located in here9
# /sbin/ -> usr/bin => Contains system recovery commands
#     e.g. fastboot, fsck (file system check and repair utility), reboot
# /lib/ => libraries needed to run the previous binaries
#     (C libraries, for example)
# /boot/ => Static files of the boot loader, except config files not needed at boot time
# 	  and the map installer. Thus, /boot/ stores data that is used before the kernel begins
#     executing user-mode programs. (other config files go into /etc/ )
# /dev/ => Device files (bluetooth, CPU, printers, etc.)
# /etc/ => system-wide configuration files
#     No binaries may be located under /etc/
# *** Recomendation: have a separate ROOT partition on your Linux installation
# /home/ => User home directories
#     The setup will differ from host to host. No program should assume any specific location
#	  for a home directory, rather it should query for it. User-specific configuration files
#     for applications are stored in here.
# /logs/ => Logging files of the SYSLOG STANDARD
# /lost+found/ => (EXT4) Suppose you end up with some file system corruption, and then you use
	  fsck # file system check and repair utility, then
#	  /lost+found/ will contain these corrupted/damaged files and folders.
# /mnt/ => Mount point for a temporarily mounted filesystem.
#     This directory is provided so that the system admin may temporarilly mount a filesystem
#     as needed. For example, when you plugin a USB flash drive
# /opt/ => Optional application software packages
#	  e.g. /opt/chrome/
# /proc/ => Contains process ID numbers
# /run/ => Run-time variable data
# /srv/ => Data for services provided by this system
#     Historically, it was meant to host servers inside of your Linux system.
#     e.g. An FTP/HTTP server
# /tmp/ => Must be available for programs that require temporary files
# /usr/ => contains most of read-only applications, libraries and files
# /var/ => Usually, log files go in here.
#	  e.g. /var/log/lastlog  --> Stores user's last login info
#     e.g. /var/log/messages --> Contains all the global system messages
#     e.g. /var/log/wtmp     --> Keeps a history of login and logout information
=========================================================================================
/dev/null # is a special device file in UNIX that acts as a black hole:
	# it discards anything written to it :O