num1=$1
num2=$2
if [ $# -ne 2 ]; then
	echo "No se han ingresado 2 argumentos"
	exit
fi
mult=$(expr $num1 "*" $num2)
div=$(expr $num1 / $num2)
resta=$(expr $num1 - $num2)
echo "La multiplicacion da $mult"
echo "La division da $div"
echo "La resta da $resta"
if [ $num1 -lt $num2 ]; then
        echo "$num1 es menor que $num2"
elif [ $num1 -eq $num2 ]; then
        echo "Ambos numeros son iguales"
else
        echo "$num2 es menor que $num1"
fi

