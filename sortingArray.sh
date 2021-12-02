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

echo ${ans[@]};
