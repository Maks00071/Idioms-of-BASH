#!/usr/bin/bash


# the simple cycle "for"
echo "the first cycle for"
for ((i=0; i<10; i++)); do
    printf '%d\n' "$i"
done

# the second cycle "for"
echo "the second for"
for value; do
    echo "$value"
done
