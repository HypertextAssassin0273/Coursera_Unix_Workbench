#!/usr/bin/env bash

echo "Simple example:"

for i in {1..3}
do
    echo "i is equal to $i"
done


echo -e "\nExplicit list:"

for picture in img001.jpg img002.jpg img451.jpg
do
    echo "picture is equal to $picture"
done


echo -e "\nArray:"

stooges=(curly larry moe)

for stooge in ${stooges[*]}
do
    echo "Current stooge: $stooge"
done


echo -e "\nCommand substitution:"

for code in $(ls)
do
    echo "$code is a bash script"
done