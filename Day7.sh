declare -A operation

read -p "Enter 1st Number :" a
read -p "Enter 2nd Number :" b
read -p "Enter 3rd Number :" c

result1=$(($a + $b * $c))
result2=$(($a * $b + $c))
result3=$(($c + $a / $b))
result4=$(($a % $b + $c))

operation[result1]=$result1
operation[result2]=$result2
operation[result3]=$result3
operation[result4]=$result4

n=${#operation[@]}

for((i=0;i<$n;i++))
do
	AR[i]=${operation[result$((i+1))]}
done
echo "Before Sort ${AR[*]}"

for((i=0;i<$n;i++))
do
	for((j=i+1;j<$n;j++))
	do
		if [ ${AR[i]} -gt ${AR[j]} ]
		then
			temp=${AR[j]}
			AR[$j]=${AR[i]}
			AR[$i]=$temp
		fi
	done
done
echo "Ascending Order ${AR[*]}"

for((i=0;i<$n;i++))
do
	for((j=i+1;j<$n;j++))
	do
		if [ ${AR[i]} -lt ${AR[j]} ]
		then
			temp=${AR[j]}
			AR[$j]=${AR[i]}
			AR[$i]=$temp
		fi
	done
done
echo "Descending Order ${AR[*]}"
