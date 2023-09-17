
op=$s1
num1=$s2
num2=$s3
case $op in
	'+') echo "$(expr num1 + num2)";;
	'-') echo "$(expr num1 - num2)";;
	*) echo "Opcion incorrecta";;
esac
