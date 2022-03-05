echo 'Enter 1st Number'
read a
echo 'Enter 2nd Number'
read b

echo 'Enter your choice'
echo '1. Addition'
echo '2. Substraction'
echo '3. Multiplication'
echo '4. Division'

read check
if [ $check -eq 1 ]
then
	sum=$(($a+$b))
	echo "sum is $sum"
elif [ $check -eq 2 ]
then
	sub=$(($a-$b))
	echo "Substraction is $sub"
elif [ $check -eq 3 ]
then
	mul=$(($a*$b))
	echo "Multiplication is $mul"
elif [ $check -eq 4 ]
then
	div=$(($a/$b))
	echo "Division is $div"
else
	echo "Entered Wrong Choice"
fi
