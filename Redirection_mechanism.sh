#!/bin/bash
# Redirect output to a file
echo "Hello, World!" > output.txt

# Append output to a file
echo "Goodbye, World!" >> output.txt

# Redirect error output to a file
ls non_existent_file.txt 2> error.txt

# Redirect both output and error to a file
ls non_existent_file.txt > output_and_error.txt 2>&1

