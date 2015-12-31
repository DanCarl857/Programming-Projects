#!/bin/bash

# script to print currently logged in users information, and current
date & time.
clear
echo "Hello $USER"
echo -e "Today is \c ";date
echo -e "Number of user login: \c"; who | wc -l
echo "Calendar"
cal

read -p "Press [Enter] key to continue..." fakeEnterKey

echo ${arg:=Foo}
bank=HSBC
echo ${bank:=Citi}
unset bank
echo ${bank:=Citi}

function die(){
	local error=${1:-Undefined error}
	echo "$0: $LINE $error"
}

# call die() with an argument
die "File not found"

# call die() without an argument
die

exit 0
