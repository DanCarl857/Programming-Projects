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

# Control structures
i=0
while [ $i -le 10 ]; do
	echo i:$i
	((i++))
done

# until statement
j=0
until [ $j -ge 10 ]; do
	echo j:$j
	((j+=1))
done

for i in 1 2 3
do
	echo $i
	((i++))
done

for i in {1..100}
do
	echo $i
	((i++))
done

# for loop with arrays
arr=("man" "cool" "what" "this")
for i in ${arr[@]}
do
	echo $i
	((i++))
done

# for loop with associative arrays
declare -A barr
barr["name"]="Carlson"
barr["id"]="1234"
for i in "${!barr[@]}"
do
	echo "$i: ${arr[$i]}"
done

# case statement
a="dog"
case $a in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No match!";;
esac

# functions

function greet {
	echo "My name is $1"
}

echo "calling function.."
greet Carlson

function numberthings {
	i=1
	for f in $@; do
		echo $i: $f
		((i++))
	done
}

numberthings $(ls)

numberthings blue black white red yellow cyan magenta
