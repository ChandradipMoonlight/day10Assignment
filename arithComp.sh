#! /bin/bash -x

echo "Wellcome to the arithmatic computation and sorting"

read -p "Enter the first number : " a
read -p "Enter the second number : " b
read -p "Enter the third number : " c

result1=$(echo $a $b $c | awk '{print $1+$2*$3}')

result2=$(echo $a $b $c | awk '{print $3+$1/$2}')

result1=$(echo $a $b $c | awk '{print $1*$2+$3}')
