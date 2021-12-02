#read -p "Enter value a : " a
#read -p "Enter value b : " b
#read -p "Enter value c : " c

a=$((RANDOM%100));
b=$((RANDOM%100));
c=$((RANDOM%100));

ans=$(($a*$b+$c));

echo $ans;
