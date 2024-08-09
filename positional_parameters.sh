#!/bin/bash

NUMBER=1

for arg in $@; do
    echo -e "Argument #${NUMBER}: $arg";
    ((NUMBER++))
done
