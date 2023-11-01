#!/bin/bash 

# Check if no arguments were provided
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    echo "Usage: ./get_pr_number.sh <input_string>"
    exit 1
fi

for var in "$@"
do
    if [[ $var =~ ^number:[0-9]+$ ]]; then
        pr_number=${var#*:}
        echo "pr_number is $pr_number"
        echo "pr_number=$pr_number" >> $GITHUB_OUTPUT
    fi
done
