#! /bin/bash

echo $1 $2 $3 $4
echo $0 # retrieves index 0, or basically the script name
echo $@ # retrieves all arguments starting from index 1
echo $# # count how many arguments were given couting from index 1

args=("$@")

echo "Result: ${args[0]}"
