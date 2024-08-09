#!/bin/bash

names=( edwin keyla maria milagros franquil coco )


echo "The names are: ${names[*]}"
echo "The names are: ${names[@]}"

echo "Index 1: ${names[1]}"

echo "The array indexes are: ${!names[@]}"
echo ${#names[@]}

echo "Last element is: ${names[${#names[@]} - 1]}"

for name in ${names[@]}
do
    echo ${name^^}
done

# Removing elements

unset names[6]

echo "People in my family: ${names[*]}"

for index in ${names[@]}
do
    echo "${index^^} is a person."
done

# Adding elements

# names[7]=atrox
# names[${#names[@]}]=atrox
names+=( atrox mango )

echo "Family members: ${names[@]}"

# Updating elements

names[0]=Edwin

echo ${names[@]}
