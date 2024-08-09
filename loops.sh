#! /bin/bash

number=1

while [ $number -le 10 ]
do
    echo $number

    number=$(( number + 1 ))
done

until [ $number -le 0 ]
do
    echo $number

    number=$(( number - 1 ))
done

echo "A for loop:"

# for i in 1 2 3 4 5
# for i in {0..15}
for i in {0..50..10}
do
    echo $i
done

echo "Another for loop"

for (( i=0; i < 10; i++ ))
do
    echo $i
done
