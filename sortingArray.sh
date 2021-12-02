#read -p "Enter value a : " a
#read -p "Enter value b : " b
#read -p "Enter value c : " c

cnt=0;

a=$((RANDOM%100));
b=$((RANDOM%100));
c=$((RANDOM%100));

ans[((cnt++))]=$(($a+$b*$c));
ans[((cnt++))]=$(($a*$b+$c));
ans[((cnt++))]=$(($c+$a/$b));
ans[((cnt++))]=$(($a%$b+$c));

echo "Original array : "${ans[@]};

for ((i=0;i<${#ans[@]};i++))
do
	for ((j=i+1;j<${#ans[@]};j++))
	do
		if [ ${ans[i]} -gt ${ans[j]} ]
		then
			temp=${ans[i]};
			ans[i]=${ans[j]};
			ans[j]=$temp;
		fi
	done
done

echo "Sorted array : "${ans[@]};
