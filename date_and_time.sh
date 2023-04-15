#!/bin/bash

# This is a simple script that greets the user and prints the current date and time.

# Get the current date and time using the `date` command.
current_time=$(date "+%Y-%m-%d %H:%M:%S")

# Define a variable with the user's name.
name="John"

# Print out a greeting message with the user's name and the current date and time.
echo "Hello, $name! The current date and time is: $current_time"

