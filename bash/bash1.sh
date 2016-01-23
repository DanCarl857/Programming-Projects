#!/bin/bash

PASSWD_FILE=/etc/passwd

# get user name
read -p "Enter a user name: " username

# try to locate in /etc/passwd
$(grep "^$username" $PASSWD_FILE > /dev/null)

# store exit status of grep
# if found grep will return 0 exit status
# if not found, grep will return a nonzero exit status
status=$?


if test $status -eq 0; then
	echo "User '$username' found in $PASSWD_FILE file."
else
	echo "User '$username' not found in $PASSWD_FILE file."
fi


