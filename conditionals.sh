#! /bin/bash

age=10

if [ $age -eq 10 ]; then
	echo "Both numbers are the same"
else
	echo "The numbers are different"
fi

if [ $age -ge 10 ]; then
	echo "$age is greater than or equal to 10"
fi

if [ $age -le 10 ]; then
	echo "$age is less than or equal to 10"
fi

salary=3600

if (( $salary <= 1500 )) then
	echo "You are underpaid"
elif (( $salary > 3000  )) then
	echo "I believe you earn more than many people in LATAM"
else
	echo "You can still earn more than that"
fi
