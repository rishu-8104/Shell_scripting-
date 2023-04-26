#!/bin/bash

# Handle SIGINT signal (Ctrl-C)
trap 'echo "Program stopped by user"; exit 1' INT

# Check if input is given
if [ -z "$1" ]; then
  echo "Usage: $0 <number of calculations>"
  exit 1
fi

# Check if input is a positive integer
if ! [[ $1 =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Input should be a positive integer"
  exit 1
fi

# Number of calculations to perform
num_calcs=$1

# Regular expression to match arithmetic expressions
regex='^ *[0-9]+(\.[0-9]+)? +[\+\-\*/] +[0-9]+(\.[0-9]+)? *$'

# Function to check if input is a valid arithmetic expression
is_valid_expression() {
  if [[ $1 =~ $regex ]]; then
    return 0
  else
    return 1
  fi
}

# Loop through calculations
for ((i=1; i<=num_calcs; i++)); do
  echo "Calculation $i:"
  read -p "Enter arithmetic expression (e.g. 1 + 2): " expr

  # Check if expression is valid
  while ! is_valid_expression "$expr"; do
    echo "Invalid expression. Please try again."
    read -p "Enter arithmetic expression (e.g. 1 + 2): " expr
  done

  # Evaluate expression and print result
  result=$(echo "scale=2;$expr" | bc -l)
  echo "Result: $result"
done

echo "All calculations completed successfully"
exit 0

