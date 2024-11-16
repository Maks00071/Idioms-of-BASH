#!/usr/bin/bash


# inside the function definition, the variables $1, $2 etc. represent the parameters of the function, 
# not the scripts. Therefore, the "for" loop will iterate over the parameters passed to the function.
function Listem {
    for arg; do 
        echo "arg to func: '$arg'"
    done
    echo "Inside func: \$0 is still: '$0'"
}

Listem 154 -c core


# in "BASH" you can pass a list of values to the "for" loop
echo "------------------------------"
echo "numbers in for"

for num in 1 2 3 4 5; do
    echo "$num"
done

# or with string
echo "-----------------------------"
echo "string in for"

for string in Sue Neil Pat Harry; do
    echo "$string"
done

