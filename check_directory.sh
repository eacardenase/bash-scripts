#!/bin/bash

echo "Enter the folder's name:"

read folder_name

if [ -d $folder_name ]; then
    echo "Create some file into it:"

    read file_name

    touch $folder_name/$file_name
else
    mkdir $folder_name
    echo "The folder was created."
fi
