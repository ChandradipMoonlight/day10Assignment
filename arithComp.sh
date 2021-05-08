#! /bin/bash -x
declare -A dict
echo "Wellcome to the arithmatic computation and sorting"

read -p "Enter the first number : " a
read -p "Enter the second number : " b
read -p "Enter the third number : " c

result1=$(($a+$b*$c))
dict['result1']=$result1

result2=$(($c+$a/$b))
dict['result2']=$result2

result3=$(($a*$b+$c))
dict['result3']=$result3

result4=$(($a%$b+$c))
dict['result4']=$result4

echo "dictionry values are : ${dict[@]}"

save=(${dict[@]})

echo "values of array are : ${save[@]}"

n=${#save[@]}


for ((i=0; i<$n; i++))
do
	for (( j=0; j<$(($n-$i-1)); j++ ))
	do
		if [ ${save[$j]} -lt ${save[ $(($j+1)) ]} ]
		then
			a=${save[$j]}
			save[$j]=${save[ $(($j+1)) ]}
			save[ $(($j+1)) ]=$a
		fi
	done
done
echo "sorted Array in descending order :"
echo ${save[@]}


for ((i=0; i<$n; i++))
do
	for (( j=0; j<$(($n-$i-1)); j++ ))
	do
		if [ ${save[$j]} -gt ${save[ $(($j+1)) ]} ]
		then
			a=${save[$j]}
			save[$j]=${save[ $(($j+1)) ]}
			save[ $(($j+1)) ]=$a
		fi
	done
done
echo "sorted Array in Ascending  order :"
echo ${save[@]}
