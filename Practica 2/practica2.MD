## 1. Editor de textos

### a) Editores de texto en línea de comandos

1. **vi** (o **vim**, una versión mejorada)
2. **nano**
3. **emacs**

### b) Diferencia con `cat`, `more`, `less`

- `cat`: Muestra todo el contenido de un archivo en la terminal.
- `more` y `less`: Permiten paginar el contenido del archivo.

Estos comandos son para **visualizar** el contenido de archivos, pero no para **editarlos**. **vi**, por otro lado, es un editor de texto completo.

#### Modos en vi

1. **Modo Normal**: Navegación y manipulación de texto.
2. **Modo Inserción**: Insertar texto.
3. **Modo Comando**: Para guardar, salir, etc.

### c) Comandos comunes en vi

- `:w`: Guardar.
- `:q`: Salir.
- `:wq`: Guardar y salir.
- `i`: Entrar en modo de inserción.
- `Esc`: Volver al modo normal.

## 2. Proceso de Arranque SystemV

### a) Procesos de inicio

1. BIOS o UEFI inicializa el hardware.
2. Carga del gestor de arranque (GRUB o similar).
3. Carga del kernel.
4. INIT (o alternativa como systemd) toma el control.
5. Ejecución de scripts y servicios.
6. Login en el sistema.

### b) Proceso INIT

- **Ejecutado por**: El kernel.
- **Objetivo**: Iniciar y gestionar servicios y procesos.

### c) Comando `pstree`

Muestra una **estructura de árbol** de todos los procesos en el sistema.

### d) RunLevels

Son **estados del sistema** que determinan qué servicios deben estar en funcionamiento.

### e) Niveles según el estándar

- 0: Apagar
- 1: Modo de usuario único
- 2-5: Modos multiusuario
- 6: Reiniciar

La definición del Runlevel inicial normalmente está en `/etc/inittab`.

### f) Archivo `/etc/inittab`

Guarda configuraciones para el proceso INIT, incluyendo el Runlevel por defecto.

### g) Cambio de Runlevel

Comando `init [NUEVO_RUNLEVEL]`. No es permanente, solo afecta la sesión actual.

### h) Scripts RC

Son scripts que se ejecutan en cada cambio de Runlevel. Normalmente se encuentran en `/etc/rc.d/`.

### i) `insserv`

Ordena los scripts de inicio para optimizar el arranque.

### j) Upstart en arranque

Reemplaza a SystemV INIT y ofrece arranque basado en eventos.

### k) Diferencias entre SystemV y Upstart

Upstart es **orientado a eventos** y más flexible.

### l) Reemplazo en Upstart

Los jobs de Upstart, almacenados en `/etc/init`.

### m) Ejemplo de job de Upstart

- `description "MySQL Server"`: Descripción del servicio.
- `start on ...`: Condiciones para iniciar.
- `stop on ...`: Condiciones para detener.
- `exec /usr/sbin/mysqld`: Comando para ejecutar.

### n) ¿Qué es systemd?

Es un sistema de inicio y un daemon que se utiliza para **inicializar, gestionar y rastrear procesos**.

### ñ) Activación de socket en systemd

Permite iniciar servicios solo cuando se necesitan, basado en eventos de socket.

### o) Concepto de cgroup

Son **grupos de control** que permiten asignar recursos de forma limitada a procesos.

## 3. Usuarios

### (a) Archivos de Información de Usuarios en GNU/Linux

Los archivos principales utilizados en un sistema GNU/Linux para guardar la información de los usuarios son:
- `/etc/passwd`: Almacena información sobre los usuarios del sistema.
- `/etc/shadow`: Guarda las contraseñas de los usuarios en forma cifrada.
- `/etc/group`: Almacena información sobre los grupos en el sistema.

### (b) UID y GID

- **UID (User Identifier)**: Es un número único asignado a cada usuario en un sistema GNU/Linux. Ayuda al sistema a identificar a los usuarios por un número en lugar de por un nombre.
  
- **GID (Group Identifier)**: Es un número único asignado a cada grupo en el sistema.

Es posible que existan UIDs iguales en un sistema. Sin embargo, en la práctica, esto no debería suceder ya que cada UID debe ser único para identificar inequívocamente a un usuario.

### (c) Usuario Root

El usuario `root` es el superusuario o administrador en un sistema GNU/Linux. Posee todos los privilegios y puede realizar cualquier operación en el sistema, sin restricciones.

No puede haber más de un usuario con el nombre `root`, pero es posible tener múltiples usuarios con privilegios de root. La UID del usuario `root` es `0`.

### (d) Creación, Modificación y Eliminación de Usuario

Para agregar el usuario `iso2017` con home en `/home/iso_2017` y agregarlo al grupo `catedra`:

```bash
sudo groupadd catedra
sudo useradd -m -d /home/iso_2017 -g catedra iso2017
sudo touch /home/iso_2017/file.txt
sudo chown iso2017:catedra /home/iso_2017/file.txt
```
Para eliminar el usuario `iso2017`:

```bash
sudo userdel -r iso2017
```

El comando `userdel` con la opción `-r` eliminará tanto el usuario como su directorio home.

### (e) Funcionalidad de Comandos

- **useradd/adduser**: Comando utilizado para añadir un nuevo usuario al sistema. `adduser` es una versión más amigable de `useradd` y suele ser preferido en algunas distribuciones.
  
- **usermod**: Modifica las propiedades de una cuenta de usuario existente, como el directorio home, el shell, entre otros.

- **userdel**: Elimina una cuenta de usuario del sistema.

- **su**: Permite cambiar el usuario con el que se está trabajando. Si se utiliza sin especificar un nombre de usuario, por defecto intentará cambiar al usuario root.

- **groupadd**: Comando utilizado para añadir un nuevo grupo al sistema.

- **who**: Muestra quién está conectado y desde dónde al sistema.

- **groupdel**: Comando que elimina un grupo.

- **passwd**: Permite cambiar la contraseña del usuario. Si eres el superusuario, puedes cambiar la contraseña de cualquier usuario en el sistema.

## 4. FileSystem:

### (a) Permisos en archivos

En un sistema GNU/Linux, los permisos sobre archivos y directorios son definidos por tres tipos: permisos para el propietario del archivo (user), permisos para el grupo al que pertenece el archivo y permisos para todos los demás usuarios (others). Estos permisos determinan si un archivo puede ser leído, escrito o ejecutado.

### (b) Comandos relacionados con permisos:

- **chmod**: Cambia los permisos de un archivo o directorio.
- **chown**: Cambia el propietario de un archivo o directorio.
- **chgrp**: Cambia el grupo de un archivo o directorio.

### (c) Notación octal en chmod:

La notación octal es una forma de representar permisos utilizando números. Cada número representa un conjunto de permisos:

- 4: permiso de lectura (r)
- 2: permiso de escritura (w)
- 1: permiso de ejecución (x)

Por ejemplo, el permiso 755 en notación octal significa que el propietario tiene permisos de lectura, escritura y ejecución (7), mientras que el grupo y otros usuarios tienen permisos de lectura y ejecución (5).

### (d) Acceso a archivos sin permisos:

El usuario `root` tiene la capacidad de acceder a cualquier archivo, independientemente de los permisos. Así que sí, hay una posibilidad.

### (e) Full path name vs Relative path name:

- **Full path name**: Es la dirección completa de un archivo o directorio desde el directorio raíz. Ejemplo: `/home/usuario/documentos/archivo.txt`.
- **Relative path name**: Es la dirección de un archivo o directorio basado en el directorio actual. Ejemplo: si estás en `/home/usuario`, puedes acceder al archivo anterior simplemente con `documentos/archivo.txt`.

### (f) Navegación y acceso a directorios:

- **pwd**: Muestra el directorio actual.
- **cd ~** o simplemente **cd**: Lleva al usuario a su directorio personal sin necesidad de escribir todo el path. El símbolo `~` hace referencia al directorio home del usuario.
  - Para acceder a otros directorios de forma similar, se pueden usar variables de entorno o aliases. Por ejemplo, `cd $DOCS` podría llevar al directorio de documentos si `DOCS` está configurado adecuadamente.

### (g) Comandos relacionados con el FileSystem:

- **cd**: Cambia el directorio actual.
- **umount**: Desmonta sistemas de archivos.
- **mkdir**: Crea un nuevo directorio.
- **du**: Muestra el uso de disco de un archivo o directorio.
- **rmdir**: Elimina un directorio vacío.
- **df**: Muestra el uso de disco de sistemas de archivos.
- **mount**: Monta sistemas de archivos.
- **ln**: Crea enlaces entre archivos.
- **ls**: Lista el contenido de un directorio.
- **pwd**: Muestra el directorio de trabajo actual.
- **cp**: Copia archivos o directorios.
- **mv**: Mueve o renombra archivos o directorios.

## 5. Procesos:

### (a) Definición de proceso

Un proceso es una instancia de un programa en ejecución. Es una unidad de actividad que el sistema operativo gestiona.
- **PID**: Es la Identificación del Proceso. Es un número único que el sistema operativo asigna a cada proceso.
- **PPID**: Es la Identificación del Proceso Padre. Indica el número de identificación del proceso que lanzó este proceso.
- En GNU/Linux, todos los procesos tienen un PID y un PPID. El proceso inicial o proceso padre de todos es el init con PID 1.
- Otros atributos de un proceso incluyen: el estado del proceso, prioridad, propietario, memoria usada, CPU usada, tiempo de inicio, etc.

### (b) Comandos para visualizar procesos

- `ps`
- `top`
- `htop` (si está instalado)

### (c) Procesos en Background y Foreground

- **Background**: Un proceso que se está ejecutando sin interactuar directamente con la consola.
- **Foreground**: Un proceso que está ejecutando y toma el control de la consola.

### (d) Ejecutar procesos en Background y Foreground

- Ejecutar en Background: `comando &`
- Traer un proceso a Foreground: `fg %jobnumber`
- Enviar un proceso a Background: `bg %jobnumber`

### (e) Pipe ( | )

Permite tomar la salida de un comando y usarla como entrada para otro.
Ejemplo: `ls -l | grep ".txt"`

### (f) Redirección

- `>` Redirige la salida estándar a un archivo. Si el archivo no existe, lo crea; si existe, lo sobrescribe.
Ejemplo: `echo "Hello" > file.txt`
  
- `>>` Añade la salida estándar a un archivo.
Ejemplo: `echo "World" >> file.txt`

- `<` Toma la entrada estándar desde un archivo.
Ejemplo: `sort < file.txt`

### (g) Comando kill

Permite enviar señales a procesos. Por lo general, se utiliza para terminar procesos.
Ejemplo: `kill -9 1234` (Donde 1234 es el PID del proceso)

### (h) Comandos relacionados con el manejo de procesos

- **ps**: Muestra una instantánea de los procesos actuales.
- **kill**: Envia señales a procesos. 
- **pstree**: Muestra una estructura de árbol de los procesos.
- **killall**: Mata procesos por nombre.
- **top**: Muestra una actualización en tiempo real de los procesos.
- **nice**: Cambia la prioridad de ejecución de un proceso.

Todos estos comandos permiten gestionar y obtener información sobre los procesos, pero con diferentes niveles de detalle y funcionalidad.

## 6. Otros comandos de Linux:

### (a) Empaquetar archivos en GNU/Linux
El concepto de empaquetar archivos en GNU/Linux se refiere a agrupar múltiples archivos y directorios en un único archivo, facilitando su transferencia o almacenamiento.

### (b) Empaquetamiento y tamaño
El archivo empaquetado generalmente tiene un tamaño menor que la suma de los tamaños individuales de los archivos contenidos, especialmente si estos archivos tienen contenido similar o redundante.

### (c) Comprimir 4 archivos en uno solo
1. `tar -cvf nombre_archivo.tar archivo1 archivo2 archivo3 archivo4`
2. `gzip nombre_archivo.tar` o directamente `tar -czvf nombre_archivo.tar.gz archivo1 archivo2 archivo3 archivo4`

### (d) Comprimir múltiples archivos con un único comando
Sí, utilizando `tar` junto con `gzip` o `bzip2`. Ejemplo: `tar -czvf archivo_comprimido.tar.gz archivo1 archivo2 archivo3 archivo4`

### (e) Funcionalidad de comandos

- **tar**: Herramienta para empaquetar o desempaquetar archivos.
- **grep**: Busca patrones específicos dentro de archivos.
- **gzip**: Comprime o descomprime archivos usando el algoritmo GZIP.
- **zgrep**: Igual que grep pero para archivos comprimidos.
- **wc**: Cuenta palabras, líneas y caracteres en archivos.

## 7. Funciones de los comandos:

- `ls −l > prueba`: Lista los archivos del directorio actual con detalle y redirige la salida al archivo "prueba".
- `ps > PRUEBA`: Muestra los procesos actuales y redirige la salida al archivo "PRUEBA".
- `chmod 710 prueba`: Cambia los permisos del archivo "prueba" a 710 (propietario puede leer, escribir y ejecutar; grupo puede ejecutar; otros no tienen permisos).
- `chown root:root PRUEBA`: Intenta cambiar el propietario del archivo "PRUEBA" a root, pero fallará si no se ejecuta como root.
- `chmod 777 PRUEBA`: Cambia los permisos del archivo "PRUEBA" a 777 (todos pueden leer, escribir y ejecutar).
- `chmod 700 /etc/passwd`: Intenta cambiar los permisos del archivo "/etc/passwd", pero fallará si no se ejecuta como root.
- `passwd root`: Intenta cambiar la contraseña del usuario root, pero fallará si no se ejecuta como root.
- `rm PRUEBA`: Elimina el archivo "PRUEBA".
- `man /etc/shadow`: Intenta mostrar el manual del archivo "/etc/shadow", pero fallará ya que "/etc/shadow" no es un comando.
- `find / −name ∗.conf`: Busca todos los archivos con extensión ".conf" en el sistema.
- `usermod root -d /home/newroot -L`: Intenta cambiar el directorio home del usuario root y bloquear su cuenta, pero fallará si no se ejecuta como root.
- `cd /root`: Intenta ingresar al directorio home de root, pero fallará si no se tiene permiso.
- `rm *`: Elimina todos los archivos en el directorio actual.
- `cd /etc`: Cambia al directorio "/etc".
- `cp * /home -R`: Intenta copiar todos los archivos y directorios desde "/etc" a "/home", pero puede fallar si hay problemas de permisos.
- `shutdown`: Intenta apagar el sistema, pero fallará si no se ejecuta como root.
