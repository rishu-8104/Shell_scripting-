#!/bin/bash
# Create some files to work with
touch file1.txt file2.txt file3.txt

# Globbing: list all files that end in ".txt"
echo "Globbing:"
ls *.txt

# Brace expansion: create a sequence of directories
echo "Brace expansion:"
mkdir -p dir{1..5}/subdir{A,B}

