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

#display elements of array
echo -e "Computation Result in Array:\n"${arr[@]}

#bubble_sort used to sort array
function sort_array(){

for ((i=0;i<4;i++))
do
	for (( j=0;j<4-i-1;j++ ))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			#swap
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
}

#calling sort function
sort_array ${arr[@]}

#displaying result in desc order
echo "Computation Result in Descending Order:"
for (( i=3;i>=0;i-- ))
do
	echo -n "${arr[$i]}  "
done
