#!/usr/bin/env bash

NAME="${1:-$USER}"
# Creating variable : NAME
#$( ... ) is command substitution → it runs a command and saves the result.
# Bash is case-sensitive: NAME ≠ NAme ≠ name. Use exactly NAME.
# UPPERCASE by convetion for envirometn variable ans cosntantes: e.g. PATH, HOME, USER, your own API_KEY, etc.
# lowercase / mixedCase: commonly used for local script variables: e.g. name, count, file_path.
# You assign with no spaces: NAME="value" (spaces would break it).
# You read it with $NAME (or ${NAME} when mixing with text).
# In our line, we assign with a default from the first argument:

#${1} = first script argument
    #When you run a bash script, you can pass arguments after the script name: ./hello.sh Marcia
    #$0 = the script’s own filename (hello.sh)
    # $1 = the first argument (Marcia)
    # $2 = the second argument

#:-$USER = fallback to your login name if no argument was given

DAY="$(date +%A)"
# date +%A prints today’s weekday name (like Saturday).

echo "Hello, ${NAME}! Today is ${DAY}."

#run the script typing at Terminal ./hello.sh Marcia
