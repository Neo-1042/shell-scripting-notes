#!/bin/bash

# Logging and the syslog standard
# Logs are the who, what, when, where and why
# Scripts may run unattended (e.g. via a CRON), and thus we need a logging mechanism

# SYSLOG STANDARD > uses facilities and severities to categorize messages
# [facility].[level]
# [facility].[severity] (equivalent)
# Eliminates the need for each application to have a logging mechanism
# Facilities => kern, user, mail, daemon, auth, local0, local7 
#       (which part of the system)
# Severities => emerg, alert, crit, err, warning, notice, info, debug
# 		(which LogLevel)
# DEFAULT = user.notice

# Log file locations are configurable. They might be located at:
cd /var/log/messages
cd /var/log/syslog

# !! from macOS 10.12+, the logger sends the message to the Apple System Logger (ASL)

# Logging with the logger utility
# By default, it creates user.notice messages
# 				   [facility].[severity]
logger "Message"
logger -p local10.info "Message" # -p = priority
logger -t myscript -p local0.info "Message" # -t = tag (mark every line in the log with the specified tag)
logger -i -t myscript "Message" # -i = id (process id is included in the log messages)
logger -f /var/rafainc/logs/logger_rrhg.log # Read the contents of the specified file into syslog

logger -p local0.notice -t HOSTIDM -f /dev/idmc

logger -s -p local0.info "Message" # -s = screen
# rodrigo: Message (On screen)

# Creating a function to log

function logit() {
	local LOG_LEVEL=$1
	shift # Shift the positional parameters to the left
	MSG=$@ # All parameters from 2 to the last (because of the shift)
	TIMESTAMP=$(date +"%Y_%m_%d %T hrs")

	if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE # Global variable
	then
		echo "${TIMESTAMP} ${HOST} ${PROGRAM_NAME}[${PID}] : ${LOG_LEVEL} ${MSG}" 
	fi
}

logit crit The environment variable is not properly defined
logit INFO "Processing data."
===================================================================================================