#! /bin/bash

echo "What's your age?"

read age

# if [ $age -gt 18 ] && [ $age -lt 40 ]; then
# if [[ $age -gt 18 && $age -lt 40 ]]; then
# if [[ $age -gt 18 || $age -lt 40 ]]; then
if [[ $age -gt 18 || $age -lt 40 ]]; then
	echo "Valid age"
else
	echo "Invalid age"
fi
