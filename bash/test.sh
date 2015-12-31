#!/bin/bash

# This is a basic bash script

today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"


echo
a=()
b=("apple" "mango" "cherry")
echo ${b[2]}
echo 
echo
b[5]="kiwi"
b+=("mango")	# adds to the end of the array
echo ${b[@]}	# prints out the whole array
echo ${b[@]: -1}	# get the last element

echo
# Associative arrays
declare -A myarray
myarray[color]=blue
myarray["office building"]="HQ West"

echo ${myarray["office building"]} is ${myarray[color]}

echo
# file manipulation
i=1
while read f; do
	echo "Line $i: $f"
	((i++))
done < test.sh	# read the contents of this file and print out.

echo $(ftp -n < ftp.txt)

echo "Using heredocs"
ftp -n <<- DoneWithTheUpdate
	open mirrors.xmission.com
	user anonymous nothinghere
	ascii
	cd gutenberg
	get GUTINDEX.01
	bye
DoneWithTheUpdate
