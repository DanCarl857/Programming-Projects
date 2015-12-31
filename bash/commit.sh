#!/bin/bash
#by : Daniel Carlson
# aim: this script commits new changes to my online repo
#		more changes to come.

echo $(chmod +x commit.sh)

echo "Changing to root directory..."
echo $(cd ..)
echo "Directory successfully changed..."

echo 
echo "Add changes to head..."
echo $(git add .)
echo "Successfully added changes..."

echo
echo "Committing changes now..."
echo $(git commit -m "this is generic")
echo "Successfully committed changes..."
