#!/bin/bash

# Logging and the syslog standard
# Logs are the who, what, when, where and why
# Script may run unattended (via a CRON)

# SYSLOG STANDARD
# Eliminates the need for each application to have a logging mechanism
# Facilities => kern, user, mail, daemon, auth, local0, local7
# Severities (LogLevels) => emerg, alert, crit, err, warning, notice, info, debug

# Log file locations are configurable:
cd /var/log/messages
cd /var/log/syslog