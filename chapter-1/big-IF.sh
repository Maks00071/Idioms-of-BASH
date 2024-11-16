#!/usr/bin/bash

# the first expression checks whether the length of the value of the "DIR" variable differs from zero.
# If the variable has some difference, that is, the length of the value is not zero, then the "cd" command will try to go
# to the directory whose name corresponds to the value of the "DIR" variable
[[ -n "$DIR" ]] && cd "$DIR"

# let's do the same thing, but after "IF"
if [[ -n "$DIR" ]]; then
    cd "$DIR"
fi


# if the value of the variable has a length of zero, then the first part will be executed,
# but the right part will not. And vice versa
[[ -z "$DIR" ]] || cd "$DIR"

# let's do the same thing, but after "IF"
if [[ -z "$DIR" ]]; then 
    : 
else
    cd "$DIR"
fi


# either "cd" will run successfully, or the script will end with an error message
cd /tmp || { echo "cd /tmp failed." ; exit ; } 

# or with error
cd /tmd || { echo "cd /tmd failed." ; }


# if the "DIR" variable is not empty and there is a directory with that name, then "cd" will navigate to that 
# directory; otherwise, the script will end with code 4
[[ -n "$DIR" ]] && [[ -z "$DIR" ]] && cd "$DIR" || exit 4


# checks that the value of the variable has a non-zero length
if [[ -n "$DIR" ]]; then
    echo "VAR has a value:" $VAR
fi
