#!/bin/bash

# define a variable with a space and an asterisk
filename="my file*.txt"

# use double quotes to allow variable expansion but prevent globbing
echo "The filename is: $filename"

# use single quotes to prevent variable expansion and globbing
echo 'The filename is: $filename'

# use backslashes to escape individual characters
echo "The filename is: my\ file\*.txt"

