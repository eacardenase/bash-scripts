#! /bin/bash

echo "Pick 1 or 2"

read value

case $value in
1)
	echo "You picked number 1"
;;
2)
	echo "You picked number 2"
;;
*)
	echo "Invalid value"
;;
esac
