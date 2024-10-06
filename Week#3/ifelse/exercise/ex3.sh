#!/usr/bin/env bash
# Q: Write a Bash script that takes two arguments. If both arguments are numbers, print their sum, otherwise just print both arguments.

regex='^[0-9]+$'

if [[ $1 =~ $regex && $2 =~ $regex ]]; then
  echo "sum: $(($1+$2))"
else
  echo "oops: $1 $2"
fi
