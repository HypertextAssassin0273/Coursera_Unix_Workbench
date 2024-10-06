#!/usr/bin/env bash
# Q: Write a Bash script that takes one argument and prints “even” if the first argument is an even number or “odd” if the first argument is an odd number.

# traditional, but safe
#if (( $1 % 2 )); then
#  echo "odd"
#else
#  echo "even"
#fi

# one liner, but operations must have non-zero exit status
# acts as tenary operator, since it has returning value
(( $1 % 2 )) && echo "odd" || echo "even"
