#!/bin/bash

# Function for addition
add() {
    result=$(( $1 + $2 ))
    return $result
}

# Function for subtraction
minus() {
    result=$(( $1 - $2 ))
    return $result
}

# Function for multiplication
multiply() {
    result=$(( $1 * $2 ))
    return $result
}

# Function for division
divide() {
    result=$(( $1 / $2 ))
    return $result
}

# Function to perform the calculations
calc() {
    # Get the arguments and operation from user input
    read -p "Give 1st argument: " arg1
    read -p "Give 2nd argument: " arg2
    read -p "Give operation (+, -, *, /): " operation
    
    # Check the operation and call the corresponding function
    case "$operation" in
        "+") add $arg1 $arg2 ;;
        "-") minus $arg1 $arg2 ;;
        "*") multiply $arg1 $arg2 ;;
        "/") divide $arg1 $arg2 ;;
        *) echo "Invalid operation" ;;
    esac
    
    # Get the result from the function and print it
    result=$?
    echo "$arg1 $operation $arg2 = $result"
}

# Main program

# Check for command line argument
if [[ $# -eq 1 ]]; then
    num_calcs=$1
else
    read -p "How many calculations do you want to perform? " num_calcs
fi

# Perform the requested number of calculations
for (( i=1; i<=$num_calcs; i++ )); do
    echo "Calculation $i:"
    calc
done

