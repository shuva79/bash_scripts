#!/usr/bin/env bash

echo "Starting loop at $(date)"
flag=0						# Assigning a variable for the while lopp

while [ $flag -eq 0 ]; do			# Loops till value of flag changes
	./random_generate.sh			# Calls random_generate.sh file to generate random numbers
	
	if [[ $? -eq 1 ]]; then			# Checks whether the status code is an unsuccessful status code
		echo "Stopping loop at $(date)"
		flag=1				# Stopping loop
	fi
done
