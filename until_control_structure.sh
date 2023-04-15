#!/bin/bash

# define a variable
x=1

# use an until control structure to execute a set of commands repeatedly until a condition is true
until [ $x -gt 10 ]
do
    echo "x is $x"
    x=$((x+1))
done

