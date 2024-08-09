#!/bin/bash

echo "What's your name?"
read name

echo "Write an adjective"
read adjective

# result="$name is $adjective"
# echo $result

echo

echo ${name,,} # lowercase
echo ${name^^} # uppercase
echo ${name,,[AEIOU]} # lowercase only vowels
echo ${name^^[aeiou]} # uppercase only vowels
