#! /bin/bash -x
declare -A dict
echo "Wellcome to the arithmatic computation and sorting"

read -p "Enter the first number : " a
read -p "Enter the second number : " b
read -p "Enter the third number : " c

result1=$(echo $a $b $c | awk '{print $1+$2*$3}')
dict['result1']=$result1

result2=$(echo $a $b $c | awk '{print $3+$1/$2}')
dict['result2']=$result2

result3=$(echo $a $b $c | awk '{print $1*$2+$3}')
dict['result3']=$result3

result4=$(echo $a $b $c | awk '{print $1%$2+$3}')
dict['result4']=$result4

echo ${dict[@]}
