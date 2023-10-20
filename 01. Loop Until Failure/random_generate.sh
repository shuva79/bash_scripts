#!/usr/bin/env bash

n=$(( RANDOM % 100 ))			# Generates a random 2 digit number

if [[ $n -eq 42 ]]; then		# Checks if the number is 42
    echo "Something went wrong"		# Echoing error message
    >&2 echo "The error was using magic numbers"
    exit 1				# We get an exit status 1 in case of error
fi

echo "Everything went according to plan"	# In case of success, just print this message
