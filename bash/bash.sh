#!/bin/bash

echo ${0#*/}

# this script demonstrates function arguments
echo 

echo "Positional parameter 1 for the script is $1."
echo

test ()
{
	echo "Positional parameter 1 in the function is $1."
	RETURN_VALUE=$?
	echo "The exit code of this function is $RETURN_VALUE."
}

test other_param
