#!/usr/bin/env bash

# note: input exceptions are not handled for simplicity & optimization

# 1. Write a function called plier which multiplies together a sequence of numbers.

function plier {
    local result=1
    for i in $@; do
        let result*=$i
    done
    echo $result
}

# output: plier 7 2 3
# result: 42

# 2. Write a function called isiteven that prints 1 if a number is even or 0 a number is not even.

function isiteven {
    echo $(($1 % 2 == 0))
}

# output: isiteven 42
# result: 1

# 3. Write a function called nevens which prints the number of even numbers when provided with a sequence of numbers. Use isiteven when writing this function.

function nevens {
    local result=0
    for i in $@; do
        if (($(isiteven $i))); then
            let result+=1
        fi
    done
    echo $result
}

# output: nevens 42 6 7 9 33
# result: 2

# 4. Write a function called howodd which prints the percentage of odd numbers in a sequence of numbers. Use nevens when writing this function.

function howodd {
    echo "$((100 - $(nevens $@) * 100 / $#))%" # '$#' is the number of arguments
}

# output: howodd 42 6 7 9 33
# result: 60%

# 5. Write a function called fib which prints the number of fibonacci numbers specified.

function fib {
    local a=0 b=1 c=0 i=$1 # note: all are local variables (because of space before them)

    while ((i--)); do # note: here, it gives better performance than 'for i in {1..$1}'
        echo -n "$a " # -n to print in the same line
        let c=$a+$b
        a=$b # note: for simple assignments, we don't need to use 'let'
        b=$c
    done

    echo # new line
}

# output: fib 10
# result: 0 1 1 2 3 5 8 13 21 34

# Side example for '\' usage:
# let a=2+3 \
# c=2+3 \
# b=2+3

# explanation: here, '\' is used to continue the command in the next line.
