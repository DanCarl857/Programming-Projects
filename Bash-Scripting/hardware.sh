#!/bin/bash
# Detecting Hardware Errors
# Note : The script must run as a cron-job

# store path to commands
LOGGER=/usr/bin/logger
FILE=/var/log/mcelog

# store email settings
AEMAIL="dancarl758@gmail.com"
ASUB="H/W Error - $(hostname)"
AMESS="Warning - Hardware errors found on $(hostname) @ $(date). See log file \
	for the details /var/log/mcelog."
OK_MESS="OK: No Hardware Error Found."
WARN_MESS="Error: Hardware Error Found."

# check if $FILE exists or not
if test ! -f "$FILE"; then
	echo "Error - $FILE not found or mcelog is not configured for 64bit Linux systems."
	exit 1
fi

# okay search for errors in file
error_log=$(grep -c -i "hardware error" $FILE)

# error found or not
if [ $error_log -gt 0 ]; then
	echo "$AMESS" | email -s "$ASUB" $AEMAIL
else
	echo "$OK_MESS"
fi
