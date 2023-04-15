#!/bin/bash

# define a variable
x=5

# use case control structure to execute different actions based on the value of x
case $x in
  0)
    echo "x is zero"
    ;;
  [1-9])
    echo "x is a single digit positive number"
    ;;
  [1-9][0-9])
    echo "x is a two-digit positive number"
    ;;
  *)
    echo "x is negative or a multi-digit positive number"
    ;;
esac

