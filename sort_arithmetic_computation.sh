#!/bin/bash -x

echo "Arithmetic Computation and Sorting!"
read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c
(( a+b*c ))
(( a*b+c ))
(( c+a/b ))
