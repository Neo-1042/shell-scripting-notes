#!/bin/ksh

# Developed in the early 1980s by David Korn in Bell Labs, the Korn Shell became
# the standard default shell on commercial, propietary UNIX systems like:
# IBM AIX, HP-UX and Sun Solaris due mainly to:
#
# 1] Full Bourne Shell (/bin/sh) backwards compatibility, while improving on many areas where
# 	/bin/sh and /bin/csh had room for improvement.
# 2] The POSIX Specification was largely based on ksh88 (Korn's 1988 AT&T Korn Shell Release)
# 3] Enterprise environments moved from these private UNIX systems to RHEL (Red Hat Enterprise Linux) due to cheaper costs, so, in this transition process, the korn shell was the preferred default shell. Thus, many enterprise servers, even though they run on RHEL, they still set the default shell to /bin/ksh.
# 4] Subshell & Fork Performance --> ksh (in particular, ksh93) executes subshells (...) and mathematical expressions inside the current process memory context whenever possible, avoiding unnecessary OS process creation via:
function fork();
# In system administration and batch jobs that process large amounts of ITERATIONS and transactions, this results in lower CPU overhead and FASTER EXECUTION than un-uptimized shell loops.