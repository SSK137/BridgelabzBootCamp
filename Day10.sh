declare -A flpStore

isFlip=0
maximum=0
temp=0
function ttlFlip()
{
	for((i=0; i<$1; i++))
	do
		side=""
		for((j=0; j<$2; j++))
		do
			flipCoin=$((RANDOM%2))
			if [ $flipCoin -eq $isFlip ]
			then
				side+=H
			else
				side+=T
			fi
		done
		flpStore[$side]=$((${flpStore[$side]}+1))
	done
	echo "Count of all combination     :${flpStore[@]}"
}
function totalPercentageFlip()
{
	for count in ${!flpStore[@]}
	{
		flpStore[$count]=`echo "scale=2; $((${flpStore[$count]}))/$times*100 " | bc`
		temp=${flpStore[$count]}
		if (( $(echo "$temp >= $maximum"| bc) ))
		then
			maximum=$temp
			key=$count
		fi
	}
}
read -p "Enter number of times you want to flip:" times
read -p "Enter choice 1)Singlet 2)Doublet 3)Triplet and so on:" coins
ttlFlip $times $coins
totalPercentageFlip
echo "All head and tail combination:${!flpStore[@]}"
echo "percentage of all combination:${flpStore[@]}"
echo "Max winning combination      :" $maximum "-" $key
