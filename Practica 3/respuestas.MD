
## 1. ¿Qué es el Shell Scripting? ¿A qué tipos de tareas están orientados los script? ¿Los scripts deben compilarse? ¿Por qué?

**Shell Scripting** es una técnica utilizada para automatizar tareas en sistemas operativos UNIX y similares. Consiste en escribir secuencias de comandos para el intérprete de comandos, o shell. Estos scripts pueden ser ejecutados como programas para realizar una variedad de tareas.

Los scripts están orientados a una variedad de tareas, tales como:

- Automatización de tareas repetitivas
- Administración del sistema
- Procesamiento de datos
- Control y monitorización de otros programas y servicios
- Etc.

Los scripts **no necesitan ser compilados** antes de ser ejecutados. Son interpretados en tiempo real por el shell. Esto es diferente de los programas tradicionales escritos en lenguajes como C o Java que requieren ser compilados antes de su ejecución. La razón de esto es que el shell scripting está diseñado para ser una herramienta rápida y eficiente para la automatización, sin la necesidad de pasar por el proceso de compilación.

## 2. Investigar la funcionalidad de los comandos echo y read

- **echo**: Se utiliza para mostrar un mensaje o salida en la terminal. Por ejemplo, `echo "Hola Mundo"` imprimirá "Hola Mundo" en la terminal.

- **read**: Es un comando que recoge la entrada del usuario desde la terminal. Por ejemplo, si se utiliza `read nombre`, esperará que el usuario introduzca algo, y lo que introduzca será almacenado en la variable `nombre`.

### (a) ¿Como se indican los comentarios dentro de un script?

Los comentarios dentro de un script de shell se indican utilizando el símbolo `#`. Todo lo que sigue a este símbolo en una línea es tratado como un comentario y no se ejecuta.
```bash
# Esto es un comentario y no será ejecutado
echo "Esto no es un comentario y será mostrado en la terminal"
```

### (b) ¿Cómo se declaran y se hace referencia a variables dentro de un script?

Las variables en shell scripting se declaran sin necesidad de utilizar un comando específico o un tipo de dato. Simplemente se asigna un valor a un nombre de variable. Para hacer referencia a una variable, se utiliza el símbolo `$` seguido del nombre de la variable.

```bash
nombre="Juan"
echo "Hola $nombre" # Esto imprimirá "Hola Juan"
```

## 3. Crear directorio y archivo

Para crear un directorio llamado `practicashell-script` dentro del directorio personal del usuario y un archivo llamado `mostrar.sh`, sigue las instrucciones:

```bash
mkdir ~/practicashell-script
touch ~/practicashell-script/mostrar.sh
```

Dentro del archivo `mostrar.sh`, el contenido debe ser:

```bash
#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es:"
pwd
```

### (a) Asignar al archivo creado los permisos necesarios de manera que pueda ejecutarlo

```bash
chmod +x ~/practicashell-script/mostrar.sh
```

### (b) Ejecutar el archivo creado de la siguiente manera:

```bash
cd ~/practicashell-script/
./mostrar.sh
```

### (c) ¿Qué resultado visualiza?

Verás varios mensajes en pantalla, se te pedirá que introduzcas tu nombre y apellido, te mostrará la fecha y hora actuales, te dirá tu apellido y nombre, mostrará el nombre de usuario y, por último, mostrará el directorio en el que te encuentras.

### (d) Las backquotes (`"```"`) entre el comando `whoami` ilustran el uso de la sustitución de comandos. ¿Qué significa esto?

Las backquotes (`"```"`) en el comando `whoami` indican sustitución de comandos. Esto significa que el shell ejecutará primero el comando que se encuentra entre las backquotes y luego sustituirá el comando con su salida. Por lo tanto, en este caso, `whoami` se ejecuta y su salida (nombre de usuario) se inserta en lugar del comando.

### (e) Realizar modificaciones al script anteriormente creado de manera de poder mostrar distintos resultados

Puedes agregar comandos adicionales al script para mostrar más detalles. Por ejemplo:

```bash
#!/bin/bash
echo "Introduzca el nombre de un directorio:"
read dir
echo "Contenido de $dir:"
ls $dir

echo "Su directorio personal es:"
echo $HOME

echo "Espacio libre en disco:"
df -h
```

Con estos cambios, ahora se te pedirá que introduzcas el nombre de un directorio y se mostrará su contenido, además se mostrará tu directorio personal y el espacio libre en disco.

## 4. Parametrización

La parametrización se refiere a la capacidad de un script para aceptar argumentos externos (o parámetros) al momento de su ejecución.

### ¿Cómo se acceden a los parámetros enviados al script al momento de su invocación?

Los parámetros enviados al script se acceden a través de variables especiales. Aquí hay algunas de ellas:

- `$0` - El nombre del script.
- `$1`, `$2`, ... `$n` - Representan el primer, segundo, ... y enésimo argumento, respectivamente.
  
```bash
#!/bin/bash
echo "El nombre del script es: $0"
echo "El primer parámetro es: $1"
echo "El segundo parámetro es: $2"
```

### ¿Qué información contienen las variables `$#`, `$*`, `$?` y `$HOME` dentro de un script?

- `$#` - Indica el número total de argumentos pasados al script.
- `$*` - Representa todos los argumentos pasados al script.
- `$?` - Devuelve el estado de salida del último comando ejecutado. Un valor de 0 indica éxito, mientras que un valor no cero indica fallo.
- `$HOME` - Es una variable de entorno que indica el directorio principal del usuario actual.

```bash
#!/bin/bash
echo "Total de parámetros: $#"
echo "Todos los parámetros: $*"
echo "Estado de salida del último comando: $?"
echo "Directorio principal del usuario: $HOME"
```

## 5. Funcionalidad del comando `exit`

El comando `exit` se utiliza para finalizar un script y devolver un valor de estado al shell o programa que lo llamó.

### ¿Qué valores recibe como parámetro y cuál es su significado?

El comando `exit` puede recibir un valor numérico como argumento, que indica el estado de salida del script. Por convención:

- `0` indica éxito.
- Cualquier valor entre `1` y `255` indica un error o condición inusual. La naturaleza exacta del error debería ser documentada en el script o en el programa.

```bash
#!/bin/bash
# Supongamos que hay una condición que verifica si un archivo existe
if [ -e "archivo.txt" ]; then
    echo "El archivo existe"
    exit 0
else
    echo "El archivo no existe"
    exit 1
fi
```

Este script comprueba si "archivo.txt" existe. Si existe, el script se termina con un estado de éxito (`0`). Si no existe, el script se termina con un estado de error (`1`).

## 6. El comando `expr`

`expr` es un comando utilizado para evaluar expresiones. Como mencionaste, su sintaxis general es `expr arg1 op arg2`.

### Tipo de operaciones que se pueden utilizar:

1. **Operaciones Aritméticas**:
   - `+` : Adición
   - `-` : Sustracción
   - `*` : Multiplicación (Nota: el asterisco debe ser escapado `\*` o encerrado entre comillas `'*'` para evitar que sea interpretado por el shell)
   - `/` : División
   - `%` : Módulo (resto de la división)

2. **Operaciones Relacionales** (devuelven `1` para verdadero y `0` para falso):
   - `=` : Igualdad
   - `!=` : Desigualdad
   - `>` : Mayor que
   - `>=` : Mayor o igual que
   - `<` : Menor que
   - `<=` : Menor o igual que

3. **Operaciones de Cadena**:
   - `:` : Devuelve la longitud de la cadena

```bash
#!/bin/bash
a=10
b=20
suma=$(expr $a + $b)
echo "La suma es: $suma"
```

## 7. El comando `test` y su equivalente `[ expresión ]`

El comando `test` se utiliza para evaluar expresiones condicionales.

### Tipo de expresiones que pueden ser usadas con el comando `test`:

1. **Evaluación de Archivos**:
   - `-d archivo` : Verdadero si el archivo existe y es un directorio.
   - `-e archivo` : Verdadero si el archivo existe.
   - `-f archivo` : Verdadero si el archivo existe y es un archivo regular.
   - `-r archivo` : Verdadero si el archivo existe y se puede leer.
   - `-s archivo` : Verdadero si el archivo existe y tiene un tamaño mayor a cero.
   - `-w archivo` : Verdadero si el archivo existe y se puede escribir.
   - `-x archivo` : Verdadero si el archivo existe y es ejecutable.

2. **Evaluación de Cadenas de Caracteres**:
   - `-z cadena` : Verdadero si la longitud de la cadena es 0.
   - `-n cadena` : Verdadero si la longitud de la cadena no es 0.
   - `cadena1 = cadena2` : Verdadero si las cadenas son iguales.
   - `cadena1 != cadena2` : Verdadero si las cadenas no son iguales.

3. **Evaluaciones Numéricas**:
   - `numero1 -eq numero2` : Verdadero si los números son iguales.
   - `numero1 -ne numero2` : Verdadero si los números no son iguales.
   - `numero1 -gt numero2` : Verdadero si numero1 es mayor que numero2.
   - `numero1 -ge numero2` : Verdadero si numero1 es mayor o igual que numero2.
   - `numero1 -lt numero2` : Verdadero si numero1 es menor que numero2.
   - `numero1 -le numero2` : Verdadero si numero1 es menor o igual que numero2.

```bash
#!/bin/bash
archivo="/path/a/un/archivo"
if [ -e "$archivo" ]; then
    echo "El archivo existe."
else
    echo "El archivo no existe."
fi
```

## 8. Estructuras de control en Shell Scripting

### **if**

La estructura `if` se utiliza para ejecutar comandos basados en condiciones.

```bash
#!/bin/bash
variable=10
if [ $variable -lt 20 ]; then
    echo "La variable es menor que 20"
fi
```

También podemos tener `elif` y `else`:

```bash
#!/bin/bash
variable=10
if [ $variable -eq 10 ]; then
    echo "La variable es 10"
elif [ $variable -lt 10 ]; then
    echo "La variable es menor que 10"
else
    echo "La variable es mayor que 10"
fi
```

### **case**

`case` se utiliza para emparejar una variable con patrones.

```bash
#!/bin/bash
opción=$1
case $opción in
    start) echo "Comenzando...";;
    stop) echo "Deteniendo...";;
    restart) echo "Reiniciando...";;
    *) echo "Opción inválida";;
esac
```

### **while**

El bucle `while` se ejecuta mientras se cumpla una condición.

```bash
#!/bin/bash
contador=0
while [ $contador -lt 5 ]; do
    echo "Contador: $contador"
    contador=$(($contador + 1))
done
```

### **for**

El bucle `for` se utiliza para iterar sobre valores o rangos.

```bash
#!/bin/bash
for i in {1..5}; do
    echo "Número: $i"
done
```

### **select**

`select` es utilizado para generar menús simples.

```bash
#!/bin/bash
opciones="Hola Adiós Salir"
select opt in $opciones; do
    if [ $opt == "Salir" ]; then
        break
    fi
    echo "Elegiste $opt"
done
```

## 9. Acciones de las sentencias `break` y `continue` dentro de un bucle

- **break**: Sale del bucle en el que se encuentra, independientemente de si la condición del bucle todavía se evalúa como verdadera.
  
- **continue**: Omite el resto del cuerpo del bucle y vuelve a evaluar la condición, procediendo a la siguiente iteración.

Ambas sentencias pueden recibir un parámetro numérico opcional que indica a cuántos niveles de bucles anidados se debe aplicar. Por defecto, es `1` (sólo el bucle actual).

## 10. Variables en Shell Scripting

### **Tipos de Variables**:

#### 1. Variables Locales

Las **variables locales** son las que se definen dentro de un bloque de código, función o script, y solo están disponibles dentro de ese bloque, función o script en el que se declaran. No son accesibles fuera del ámbito donde se crearon.

Por ejemplo, si declaramos una variable local dentro de una función, esta variable no será visible fuera de la función.

```bash
#!/bin/bash
funcion_ejemplo() {
    local variable_local="Soy una variable local"
    echo $variable_local
}

funcion_ejemplo # Esto imprimirá "Soy una variable local"
echo $variable_local # Esto no imprimirá nada ya que la variable_local es solo local a la función
```

#### 2. Variables de Entorno

Las **variables de entorno** son variables que están disponibles globalmente para cualquier proceso en el shell. Son utilizadas para definir información que programas y aplicaciones pueden necesitar, como rutas a directorios específicos o configuraciones específicas del sistema.

Por ejemplo, `PATH` es una variable de entorno que indica al sistema dónde buscar archivos ejecutables. 

Las variables de entorno se definen utilizando la instrucción `export`:

```bash
#!/bin/bash
export MI_VARIABLE="Soy una variable de entorno"
```

Una vez exportada, `MI_VARIABLE` puede ser accedida por otros procesos o subshells.

#### 3. Variables de Posición

Las **variables de posición** son variables especiales utilizadas en shell scripting para referirse a los argumentos pasados a un script o función. 

- `$0`: Representa el nombre del script.
- `$1`, `$2`, ... : Representan el primer, segundo, etc., argumento proporcionado al script.

Además, hay otras variables relacionadas:

- `$#`: Indica el número total de argumentos pasados al script.
- `$*`: Representa todos los argumentos pasados al script.
- `$@`: Similar a `$*`, pero se utiliza cuando se quieren preservar las comillas individuales en argumentos con espacios.

```bash
#!/bin/bash
echo "Nombre del script: $0"
echo "Primer argumento: $1"
echo "Segundo argumento: $2"
echo "Todos los argumentos con \$*: $*"
echo "Todos los argumentos con \$@: $@"
echo "Número total de argumentos: $#"
```

Si ejecutamos el script anterior con los argumentos "arg1" "arg2 arg3", el output será:



### ¿Es Shell Script fuertemente tipado?

No, shell scripting no es fuertemente tipado. Las variables en Shell se tratan como cadenas de caracteres, independientemente de si contienen números, caracteres o cadenas de texto.

### **Arreglos**

Sí, puedes definir arreglos en Shell Scripting.

```bash
#!/bin/bash
array=("elemento1" "elemento2" "elemento3")
echo "${array[1]}" # Imprime "elemento2"
```

Para añadir elementos al arreglo:

```bash
#!/bin/bash
array=("elemento1" "elemento2" "elemento3")
array[3]="elemento4"
echo "${array[@]}" # Imprime todos los elementos del arreglo
```




