#!/usr/bin/env bash

function hello {
  echo "Hello"
}

# hello # call function

function ntmy {
  echo "Nice to meet you $1"
}

# note: we can use functions (as commands) through 'source' command