#!/bin/bash

# define an array of fruits
fruits=("apple" "banana" "orange" "grape" "pear")

# print out the entire array
echo "Fruits: ${fruits[@]}"

# print out the length of the array
echo "Number of fruits: ${#fruits[@]}"

# print out the second element of the array
echo "Second fruit: ${fruits[1]}"

# change the third element of the array
fruits[2]="pineapple"

# print out the modified array
echo "Modified fruits: ${fruits[@]}"

# iterate over the elements of the array
echo "Fruits:"
for fruit in "${fruits[@]}"
do
    echo "- $fruit"
done

