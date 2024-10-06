#!/usr/bin/env bash
# Q: Write a bash script where you define two arrays inside of the script, and the sum of the lengths of the arrays are printed to the console when the script is run.

arr1=(zero one two three four five six seven eight nine ten)
arr2=(a b c d e f g h i j k l m n o p q r s t u v w x y z)

echo "sum of array lengths: ${#arr1[@]} + ${#arr2[@]} = $(( ${#arr1[@]} + ${#arr2[@]} ))"