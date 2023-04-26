#!/bin/bash
# Test if a file exists
if [ -e file.txt ]
then
    echo "file.txt exists"
else
    echo "file.txt does not exist"
fi

# Test if a string is empty
if [ -z "$1" ]
then
    echo "You did not provide an argument"
else
    echo "Your argument is: $1"
fi

