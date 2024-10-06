#!/usr/bin/env bash
# Q: Write a bash script where you define an array inside of the script, and the first argument for the script indicates the index of the array element that is printed to the console when the script is run.

array=(zero one two three four five six seven eight nine ten) # assumed

if [[ $1 && $1 -gt 0 ]]; then # bound check
    echo ${array[$1]}
fi