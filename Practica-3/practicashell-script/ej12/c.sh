
op=$1
num1=$2
num2=$3
case $op in
	+) echo "$num1 + $num2 = $(expr $num1 + $num2)";;
	-) echo "$num1 - $num2 = $(expr $num1 - $num2)";;
	\*) echo "$num1 * $num2 = $(expr $num1 \* $num2)";;
	/) echo "$num1 / $num2 = $(expr $num1 / $num2)";;
	*) echo "Opcion incorrecta";;
esac
