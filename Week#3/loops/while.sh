#!/usr/bin/env bash

count=3

while ((count)); do
  echo "count is equal to $count"
  ((count--))
done

# # OR

# while [[ $count -gt 0 ]]
# do
#   echo "count is equal to $count"
#   let count=$count-1
# done