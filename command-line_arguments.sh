#!/bin/bash

# Set a variable from a command-line argument
filename=$1

# Check if the file exists
if [ -f "$filename" ]
then
    echo "File $filename exists."
else
    echo "File $filename does not exist."
fi

