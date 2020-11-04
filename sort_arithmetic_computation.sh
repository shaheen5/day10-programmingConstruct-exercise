#!/bin/bash -x

echo "Arithmetic Computation and Sorting!"
read -p "Enter a : " a
read -p "Enter b : " b
read -p "Enter c : " c

#declare a dictionary
declare -A dictCompute
#store the results in dictionary for every computation
dictCompute[expression1]=$(( a+b*c ))
dictCompute[expression2]=$(( a*b+c ))
dictCompute[expression3]=$(( c+a/b ))
dictCompute[expression4]=$(( a%b+c ))

#read values from dictionary into array
for value in "${dictCompute[@]}"
do
	arr[count++]=$value
done

