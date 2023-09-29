## 1. Discos en GNU/Linux
    1) Para instalar Linux como minimo necesitamos una particion para el "/"

## 2. Proceso init
    1) En el arranque basado en SystemD es reemplazado por el proceso-demonio "systemd"
    2) Segun System V se lo configura a travez del archivo /etc/inittab
    3) Posee PID 1

## 3. Sistemas de archivos GNU/Linux
    1) Podemos montar muchos tipos de File Systems
    2) En /dev encontramos archivos que representan dispositivos
    3) En /var encontramos informacion variable
    4) En /home estan las carpetaas personales de los usuarios

## 4. Arranque basado en MBR
    1) El MBR ocupa 512 bytes

## 5. Kernel de GNU Linux
    1) Es un kernel monolico hibrido
    2) Podemos ver su codigo fuente y modificarlo
    3) Se distribuye bajo licencia GPL

## 6. GNU Linux y los discos
    1) /dev/hda1 pude ser una particion primaria o logica
    2) En el archivo /etc/fstab encontramos informacion sobre el montaje de los discos
    3) Los patrocinadores no destructivos permiten redimensionar particiones

## 7. El comando $ tar czvf parcial.tar.gz /var/log/kern.log
    1) Empaqueta y comprime el contenido del directorio /var/log/kern.log en el archivo parcial.tar.gz

## 8. Cosas que ESTAN MAL sobre Usuarios en GNU Linux
    1) El directorio personal de los usuarios se especifica en el archivo /etc/users
    2) En el archivo /etc/fstab se configura el shell de los usuarios
    3) Mediante el comando usermod podemos editar los permisos de acceso sobre archivos

## 9. Proceso de arranque SystemV en GNU Linux 
    1) El proceso de arranque se divide en niveles
    2) En /etc/rcX.d (donde X=0..6) hay links a scripts que se ejecutan en cada nivel
    3) Los scripts que se ejecutan durante el arranque estan en /etc/init.d

## 10. cat /etc/passwd | cut -d | grep iso
    1) El comando falla dado que le faltan paraemetros al cut

## 11. Procesos en UNIX
    1) Podemos desviar la salida estandar de un proceso a la entrada de otro con pipe (|)
    2) Por defecto tiene 3 archivos abiertos
    3) Cada proceso posee un PID unico

## 12. Permisos en GNU/Linux
    1) Si un archivo tiene permisos 550 pude ser leido y/o ejecutado por el duenio(no tengo enie) y su grupo
    2) Los permisos se aplican sobre archivos y directorios

## 13. Arranque de una PC
    1) El order de booteo es 1: El hard lee el sector de arranque - 2: Se ejecuta el codigo de la BIOS - 3: Se carga el gestor de arranque - 4: se carga el kernel
    2) Solo pude haber un unico disco designado como Primary Master Disc
