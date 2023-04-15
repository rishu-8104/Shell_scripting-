#!/bin/bash

# Parameter expansion
name="John"
echo "Hello, ${name^^}!" # prints "Hello, JOHN!"

# Command substitution
current_time=$(date "+%Y-%m-%d %H:%M:%S")
echo "The current date and time is: $current_time"

# Brace expansion
echo "The first 5 even numbers are: {2..10..2}" # prints "The first 5 even numbers are: 2 4 6 8 10"

# Arithmetic expansion
x=5
y=10
echo "The sum of $x and $y is: $((x + y))" # prints "The sum of 5 and 10 is: 15"

# Command-line argument expansion
echo "The first argument is: $1"
echo "The second argument is: $2"

