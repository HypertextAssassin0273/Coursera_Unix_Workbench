#!/usr/bin/env bash

if [[ $1 -eq 4 ]]
then
	echo "$1 is my favorite number"
elif [[ $1 -gt 3 ]]
then
	echo "$1 is also a great number, but greater than req."
else
	echo "You entered: $1, not what I was looking for."
fi
