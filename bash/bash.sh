#!/bin/bash

space=`df -h | awk '{print $5}' | grep % \ grep -v Use | sort -n | tail -1 | cut -d "%" -f1 -`

case $space in
[1-6]*)
	Message="All is quiet"
	;;
[7-8]*)
	Message="Start thinking about cleaning out some stuff. There's a partition that is $space % f"
	;;
9[1-8])
	Message="Better hurry with that new disk.... One partition is $space % full"
	;;
99)
	Message="I'm drowning here! There's a partition at $space %!"
	;;
*)
	Message="blaaaaaaaaaaaaaaaah"
	;;
esac

echo $Message | mail -s "disk report `date`" dinesh
