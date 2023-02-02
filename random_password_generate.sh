#!/bin/bash

# This scripts generates a list of random passwords.
# A random number as a password.

PASSWORD="${RANDOM}"
echo "${PASSWORD}"


# Three random number together.
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${RANDOM}"


# Use te current date/time as the basis for the password.
PASSWORD=$(date +%s)
echo "${PASSWORD}"


# Use nanoseconds to act as randomization
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# A better password.
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"


# An even better Password.
PASSWORD=$(date +%s%N${RANDOM}${RANDOM} | sha256sum | head -c32)
echo "${PASSWORD}"


# shuf command to shuffle the line
# Eg:
#   shuf /etc/passwd



# fold command - wrap each input line to fit in specified width
# eg:
#   echo s=!@#$%^&**))
#   echo "${s}" | fold -w1
#   echo "${s} | fold -w1 | shuf | head -c1"


# APpend a special character to the password.
SPECIAL_CHARACTER=$(echo '!@#$%^&*()' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"




