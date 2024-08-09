#!/bin/bash

echo "Enter file name:"
read file_name

if [ -f $file_name ]; then
    # echo "Enter the content you want to add:"

    # read content

    # echo $content >> $file_name

    while IFS= read -r line
    do
        echo $line
    done < $file_name

    # rm $file_name # deletes file
    # echo "$file_name was deleted"
else
    touch $file_name

    echo "$file_name was created. Try adding some content to it!"
fi
