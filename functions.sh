#!/bin/bash

set -u

function sayHello() {
    local message="Hello, my name is $1 and I'm $2 years old."
    echo $message
}

sayHello "Edwin" 28
sayHello "Keyla" 29
sayHello "Irene" 63

# echo $message
