#!/bin/bash

# This script generates a random password for each user specified on the command line.

# Display what the user typed on the command line.
echo "You executed this command: ${0}"


# basename --> it will print the last name
# dirname  --> it will print the begining of the name

# Display the path and filename of the script.
echo "You used $(dirname ${0}) as the path to $(basename ${0}) script."

# Tell them how many arguments they passed in.
# (Inside the script they are parameters, outside they are agruments)
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} arguments(s) on the command line."

# Make sure they at least supply one argument
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
    echo "Usage: ${0} USER_NAME [USER_NAME]..."
    exit 1
fi




# Generate and display a password for each parameter
for USER_NAME in "${*}"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c32)
    echo "${USER_NAME}: ${PASSWORD}"
done
