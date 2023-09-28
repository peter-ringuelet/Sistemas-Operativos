# Parcial

## 1. Arranque basado en SystemV
    1) El MBC esta contenido en el MBR

## 2. SystemV
    1) Siempre ejecuta los procesos del inicio de manera sincronicaa 
    2) Los runlevels de System V se reemplazan por targets

## 3. Proceso de arranque basado en SystemV en GNU Linux 
    1) En /etc/rcX.d (donde X=0..6) hay links a scripts que se ejecutan en cada nivel

## 4. Proceso init 
    1) Es el encargado de montar los file systems

## 5. Uso de variables en Shell Scripting 
    1) La sustitucion de comandos permite utilizar la salida de comandos como si fuera texto
    2) $(ps) permite sustituir el comando ps por su resultado
    3) `ps` permite sustituir el comando ps por su resultado

## 6. Cosas NO CIERTAS de GNU/Linux:
    1) NO es Case Sensitive
    2) Su codigo fuente es abierto y disponible para cualquier persona exceptuando el del kernel
    3) Es exclusivamente multiusuario y monotarea
    4) Los archivos tienen una extension segun su tipo (.exe, .doc, etc)

## 7. procesos en UNIX:
    1) Con > podemos desviar la salida estandard de un proceso a un archivo
    2) Con pipe(|) nos permite comunicar procesos
    3) Podemos ubicar un proceso univocamente por su PID

## 8. Cosas NO CIERTAS de uso de variables en Shell Scripting:
    1) $? contiene la cantidad de argumentos recividos
    2) $0 hace referencia al primer parametro de un script
    3) $# contiene la lista de todos los argumentos
    4) No podemos pasar parametros a funciones

## 9. Discos en GNU/Linux
    1) Para instalar Linux como minimo necesitamos una particion para el "/"
    2) Siempre se debe definir un punto de montaje para la particion raiz (/)

## 10. Sistemas de archivos en GNU/Linux
    1) en /bin encontramos archivos binarios ejecutables