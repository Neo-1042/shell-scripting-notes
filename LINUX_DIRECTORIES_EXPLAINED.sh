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