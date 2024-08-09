#! /bin/bash

for (( i=0; i<10; i++ ))
do
    if [ $i -eq 5 ]; then
        break
    fi

    if [[ $i -eq 2 || $i -eq 4 ]]; then
        continue
    fi

    echo $i
done
