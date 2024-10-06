#!/usr/bin/env bash

# xyz=404 # global variable, but not visible in shell after function call

function addseq {
    sum=0 # local variable, but globally visible in shell after function call

    for element in $@; do
        let sum+=$element
    done

    echo $sum
}

function addseq2 {
    local sum=0 # local variable, but not visible in shell after function call

    for element in $@; do
        let sum+=$element
    done

    echo $sum
} # note: this won't modify global variable sum in shell (if any)