#!/bin/bash

# define a variable
x=1

# use a while control structure to execute a set of commands repeatedly as long as a condition is true
while [ $x -le 10 ]
do
    echo "x is $x"
    x=$((x+1))
done

