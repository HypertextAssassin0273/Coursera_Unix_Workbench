#!/usr/bin/env bash
# Q: Write a Bash script that prints “Thank God it’s Friday” if today is Friday otherwise print the day. (Hint: take a look at the date program).

day=$(date +%A)

if [[ $day = "Friday" ]]; then
  echo "Thank God it’s $day"
else
  echo "Oh shoot, it’s $day"
fi
