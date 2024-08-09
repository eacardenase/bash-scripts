#!/bin/bash

echo "Enter your password"
read input1

echo "Confirm your password"
read input2

if [ $input1 == $input2 ]; then
    echo "Access granted"
else
    echo "Unauthorized"
fi
