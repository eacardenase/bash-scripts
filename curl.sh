#!/bin/bash

echo "Enter the URL:"
read url

curl $url > users.json
