#!/bin/bash

# Demonstrate the use of shift and while loops

# Display the first theree parameters.

echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"
echo "Parameter 4: ${4}"


# Loop through all the positional parameters
while [[ "${#}" -gt 0 ]]
do
    echo "Number of parameters: ${#}"
    echo "parameters 1: ${1}"
    echo "parameters 1: ${2}"
    echo "parameters 1: ${3}"
    echo
    shift
done