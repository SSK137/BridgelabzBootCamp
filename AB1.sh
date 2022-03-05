sum=0

for((i=1;i<=5;i++))
do
	no=$((RANDOM%100))
	if [ $no -gt 9 ]
	then
		echo "$i Number $no"
		sum=$(($sum+$no))
	fi
done

echo "Sum = $sum"
avg=$(($sum/5))
echo "Average = $avg"
