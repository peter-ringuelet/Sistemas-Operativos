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

## 2. Proceso de Arranque SystemV:

### (a) Pasos del Proceso de Inicio de GNU/Linux:

1. **BIOS (Basic Input/Output System):** La BIOS realiza la POST (Prueba de Autoinicio), verifica el hardware y busca un dispositivo de arranque.
2. **MBR (Master Boot Record):** Está ubicado en el primer sector del dispositivo de arranque y contiene el bootloader y la tabla de particiones.
3. **Bootloader (GRUB, LILO, etc.):** Carga el kernel en la memoria.
4. **Kernel:** Inicia y monta el sistema de archivos raíz.
5. **INIT:** Es el primer proceso ejecutado por el kernel. Dependiendo de la configuración, se ejecuta System V o Upstart.

### (b) Proceso INIT:

El proceso INIT es el primer proceso que se ejecuta en el espacio de usuario tras cargar el kernel. **¿Quién lo ejecuta?** Es ejecutado por el kernel. **¿Cuál es su objetivo?** Su objetivo es inicializar el sistema, arrancar todos los servicios y daemons necesarios y gestionar todos los demás procesos.

### (c) Comando `pstree`:

Al ejecutar el comando `pstree`, se muestra un árbol de procesos del sistema. Este comando nos permite observar la jerarquía de los procesos, mostrando quién es el padre y quiénes son los hijos.

### (d) RunLevels:

Los **RunLevels** definen conjuntos de programas que se ejecutan al arrancar o detener el sistema. **¿Cuál es su objetivo?** Controlar qué servicios y procesos se ejecutan en diferentes momentos o estados del sistema.

### (e) Niveles de Ejecución:

Los runlevels estándar son:

- 0: Apagar el sistema.
- 1: Modo usuario único (resolución de problemas, mantenimiento).
- 2-4: Modos multiusuario (diferentes configuraciones).
- 5: Modo gráfico (GUI).
- 6: Reinicio.

**¿Dónde se define qué Runlevel ejecutar?** Se define en el archivo `/etc/inittab`. No todas las distribuciones siguen estos estándares al pie de la letra, pero la mayoría lo hace.

### (f) Archivo `/etc/inittab`:

**Finalidad:** Es el archivo principal que INIT utiliza para arrancar scripts y programas durante la inicialización. **Tipo de información:** Define el runlevel por defecto, la ejecución de ciertos programas o scripts, y cómo manejar ciertas condiciones, como un reinicio inesperado. **Estructura:** Cada línea tiene un identificador único, el runlevel asociado, la acción a realizar y el comando a ejecutar.

### (g) Cambio de Runlevel:

Para cambiar de un runlevel a otro, usarías el comando `init`. Por ejemplo, para cambiar al runlevel 3, ejecutarías:

abro bash
sudo init 3
cierro bash

Este cambio no es permanente; solo afecta a la sesión actual. Para cambios permanentes, tendrías que modificar el archivo `/etc/inittab`.

### (h) Scripts RC:

**Finalidad:** Son scripts que inician o detienen servicios y otros scripts dependiendo del runlevel. **Ubicación:** Generalmente en `/etc/rc.d/` o `/etc/init.d/`. El sistema determina qué script ejecutar basándose en el runlevel actual y las configuraciones en los directorios `/etc/rcX.d/` (donde X es el número del runlevel). Existe un orden específico, generalmente dictado por el nombre del script o un número prefixado al script.

### (i) `insserv`:

`insserv` permite al administrador del sistema habilitar o deshabilitar servicios durante los runlevels. Comparado con el arranque tradicional, `insserv` ordena los scripts de inicio basándose en sus dependencias, lo que puede resultar en un proceso de arranque más rápido y eficiente.

### (j) Upstart en el Proceso de Arranque:

Upstart es un reemplazo para el System V init. Su objetivo es iniciar los servicios en paralelo para acelerar el proceso de arranque. A diferencia del INIT tradicional, Upstart se basa en eventos.

### (k) Diferencias entre SystemV y Upstart:

1. SystemV se basa en runlevels, mientras que Upstart se basa en eventos.
2. Upstart intenta arrancar servicios en paralelo, mientras que SystemV sigue un orden específico.
3. La configuración de Upstart se encuentra en `/etc/init/`, mientras que SystemV utiliza `/etc/inittab`.

### (l) Reemplazo de Scripts RC en Upstart:

En Upstart, los scripts rc de SystemV son reemplazados por archivos de configuración de trabajo que se encuentran en `/etc/init/`. Estos archivos definen cuándo y cómo iniciar o detener un servicio o aplicación.

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

Establecer una contraseña para el usuario `iso2017`:

```bash
sudo passwd iso2017
```

Para cambiar al usuario `iso2017` desde una terminal:

```bash
su - iso2017
```

Si quieres acceder al usuario `iso2017` desde una interfaz gráfica, cierra sesión y vuelve a iniciar sesión seleccionando al usuario `iso2017`.

Si tienes un servidor SSH configurado en tu máquina y deseas acceder como el usuario `iso2017`:

```bash
ssh iso2017@direccion_ip_de_tu_maquina
```

Reemplaza "direccion_ip_de_tu_maquina" con la dirección IP real de tu máquina.

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

`chmod` es un comando en sistemas Unix y Linux utilizado para cambiar los permisos de archivos o directorios.

### Estructura de permisos (esto lo agregue yo)

Cada archivo o directorio tiene tres tipos de permisos:

1. **u** - Owner (dueño o usuario)
2. **g** - Group (grupo)
3. **o** - Others (otros)

Y hay tres tipos de acciones asociadas con cada tipo:

1. **r** - Leer (read)
2. **w** - Escribir (write)
3. **x** - Ejecutar (execute)

### Usando números

Se pueden representar los permisos utilizando números. Cada acción tiene un valor asociado:

1. **r** - 4
2. **w** - 2
3. **x** - 1

Por ejemplo:

```bash
chmod 755 archivo
```

Aquí, 7 (que es 4+2+1) se refiere a "rwx", 5 (que es 4+1) se refiere a "r-x" y el otro 5 también se refiere a "r-x". Por lo que los permisos quedarían como "rwxr-xr-x".

Esto significa:

- El dueño puede leer, escribir y ejecutar (7).
- Los miembros del grupo pueden leer y ejecutar, pero no escribir (5).
- Otros usuarios pueden leer y ejecutar, pero no escribir (5).

### Usando letras

Otra forma de usar `chmod` es con letras y símbolos:

- **+** para agregar permisos
- **-** para eliminar permisos
- **=** para asignar permisos

Por ejemplo:

```bash
chmod u=rwx,g=rw,o=r archivo
```

Esto asigna permisos de lectura, escritura y ejecución para el dueño; lectura y escritura para el grupo; y solo lectura para otros.

Otro ejemplo:

```bash
chmod g+x archivo
```

Esto agrega permisos de ejecución al grupo del archivo.

### Ejemplos

1. Para dar todos los permisos al dueño, pero solo lectura y ejecución al grupo y a otros:

```bash
chmod 755 archivo
```

2. Para eliminar permisos de escritura a todos:

```bash
chmod a-w archivo
```

3. Para dar solo permisos de lectura y escritura al dueño y ninguno al grupo y a otros:

```bash
chmod 600 archivo
```

4. Para dar permisos de ejecución a todos:

```bash
chmod a+x archivo
```

5. Cambiar permisos de un directorio y su contenido de forma recursiva:

```bash
chmod -R 755 directorio/
```

Espero que estos ejemplos te ayuden a comprender mejor cómo funciona `chmod`. ¡Es una herramienta esencial y muy potente en sistemas Unix y Linux!


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

### Extra mio

El comando `usermod` es utilizado para modificar o cambiar cualquier atributo de una cuenta de usuario ya existente.

- El flag `-d /home/newroot` cambiará el directorio home del usuario a `/home/newroot`.
- El flag `-L` bloqueará la cuenta de usuario.

Entonces, el comando `usermod root -d /home/newroot -L` hace lo siguiente:

1. Cambia el directorio home de la cuenta `root` a `/home/newroot`.
2. Bloquea la cuenta `root`, lo que significa que `root` no podrá iniciar sesión.

Si utilizaste el comando `sudo usermod root -L`, bloqueaste el acceso directo a la cuenta de `root` mediante su contraseña.

Para desbloquear la cuenta de `root` después de usar el comando anterior:

```bash
sudo passwd -u root
```

Este comando desbloqueará la cuenta de `root` y permitirá nuevamente el acceso directo mediante contraseña. Es importante tener en cuenta las implicaciones de seguridad al habilitar y deshabilitar el acceso directo a la cuenta de `root`. Por razones de seguridad, muchos sistemas deshabilitan el acceso directo a `root` para evitar posibles intrusiones no autorizadas.


## 8. Comandos para acciones específicas:

### (a) Terminar el proceso con PID 23
```bash
kill 23
```

### (b) Terminar el proceso llamado init
```bash
killall init
```
Nota: **No debes hacer esto**. `init` es el primer proceso que se ejecuta en un sistema Unix/Linux, y matarlo puede causar que el sistema sea inestable o se reinicie. 

### (c) Buscar archivos de usuarios con la cadena “.conf”
```bash
find /home -name "*.conf"
```

### (d) Guardar lista de procesos en /home/<su nombre de usuario>/procesos
```bash
ps aux > /home/<su nombre de usuario>/procesos
```
Reemplaza `<su nombre de usuario>` con tu nombre de usuario real.

### (e) Cambiar permisos de /home/<su nombre de usuario>/xxxx
```bash
chmod 751 /home/<su nombre de usuario>/xxxx
```

### (f) Cambiar permisos de /home/<su nombre de usuario>/yyyy
```bash
chmod 750 /home/<su nombre de usuario>/yyyy
```

### (g) Borrar todos los archivos del directorio /tmp
```bash
rm -rf /tmp/*
```

### (h) Cambiar propietario de /opt/isodata al usuario iso2021
```bash
chown iso2021 /opt/isodata
```

### (i) Guardar el directorio actual en /home/<su nombre de usuario>/donde
```bash
pwd >> /home/<su nombre de usuario>/donde
```
Nota: El operador `>>` se usa para agregar al final de un archivo sin sobrescribir su contenido.

## 9. Comandos para realizar acciones específicas:

### (a) Ingrese al sistema como usuario “root”
```bash
su -"
```

### (b) Crear un usuario
```bash
useradd -m <primera letra de tu nombre><tu apellido>
```
```bash
passwd <primera letra de tu nombre><tu apellido>
```

### (c) Archivos y directorios modificados al crear un usuario
Los archivos principales que se modifican son:
- /etc/passwd
- /etc/shadow
- /etc/group

Se crea un directorio home para el nuevo usuario, por lo general en:
```bash
/home/<primera letra de tu nombre><tu apellido>
```

### (d) Crear un directorio en /tmp
```bash
mkdir /tmp/cursada2021
```

### (e) Copiar archivos de /var/log al nuevo directorio
```bash
cp -r /var/log/* /tmp/cursada2021/
```

### (f) Cambiar propietario y grupo al nuevo directorio
```bash
chown -R <primera letra de tu nombre><tu apellido>:users /tmp/cursada2021/
```

### (g) Cambiar permisos
```bash
chmod -R 761 /tmp/cursada2021/
```

### (h) Acceder a otra terminal virtual
CTRL+ALT+F(2-6) 

### (i) Nombre de la terminal del nuevo usuario
```bash
tty
```

### (j) Cantidad de procesos activos
```bash
ps aux | wc -l
```

### (k) Cantidad de usuarios conectados
```bash
who | wc -l
```

### (l) Enviar un mensaje al usuario creado
```bash
write <primera letra de tu nombre><tu apellido>
```

Luego, escribe el mensaje. Para enviarlo, presiona `CTRL+D`.

### (m) Apagar el sistema
```bash
shutdown -h now
```

## 10. Comandos para realizar acciones específicas:

### (a) Crear un directorio con el número de legajo e ingresar a él
```bash
mkdir <número_de_legajo>
```
```bash
cd <número_de_legajo>
```

### (b) Crear un archivo utilizando `vi`
```bash
vi LEAME
```
Dentro de vi, ingresar la información solicitada y guardar los cambios con `:wq`.

### (c) Cambiar permisos del archivo LEAME
```bash
chmod 017 LEAME
```

### (d) Verificar contenido de /etc y crear archivo `leame`
```bash
ls /etc > ~/leame
```

El sistema de archivos en Linux distingue entre mayúsculas y minúsculas. Por lo tanto, "LEAME" y "leame" son considerados como dos archivos diferentes.

### (e) Buscar un archivo en el filesystem
Para buscar un archivo específico:
```bash
find / -name <nombre_del_archivo>
```

Para buscar varios archivos con características similares:
```bash
find / -name '<patrón_de_búsqueda>'
```
Por ejemplo, para buscar todos los archivos `.txt` en el sistema: "find / -name '*.txt'"

### (f) Buscar todos los archivos con extensión .so y almacenar el resultado
```bash
find / -name '*.so' > .ejercicio_f
```

## 11. Análisis de comandos y acciones asociadas:

### Comandos y sus acciones

1. **mkdir iso**: Crea un directorio llamado "iso".
2. **cd ./iso; ps > f0**: Cambia al directorio "iso" y guarda la lista de procesos en un archivo llamado "f0".
3. **ls > f1**: Guarda el listado del directorio actual (iso) en un archivo llamado "f1".
4. **cd /**: Cambia al directorio raíz del sistema.
5. **echo $HOME**: Muestra el directorio home del usuario actual.
6. **ls -l &> $HOME/iso/ls**: Guarda el listado detallado del directorio raíz en un archivo llamado "ls" dentro del directorio "iso".
7. **cd $HOME; mkdir f2**: Regresa al directorio home del usuario y crea un directorio llamado "f2".
8. **ls -l df2**: Muestra el listado detallado del archivo o directorio "df2". Si no existe, dará error.
9. **chmod 341 f2**: Cambia los permisos del directorio "f2" dando al dueño escritura y ejecucion, al grupo lectura y a otros ejecucion.
10. **touch dir**: Crea un archivo vacío llamado "dir".
11. **cd f2**: Cambia al directorio "f2".
12. **cd ~/iso**: Cambia al directorio "iso" en el directorio home del usuario.
13. **pwd >f3**: Guarda la ruta del directorio actual en un archivo llamado "f3".
14. **ps | grep ' ps ' | wc -l >> ../f2/f3**: Cuenta cuántas veces 'ps' aparece en la lista de procesos y añade el número al archivo "f3" en el directorio "f2".
15. **chmod 700 ../f2; cd ..**: Cambia los permisos del directorio "f2" a lectura, escritura y ejecución solo para el dueño, y regresa al directorio superior.
16. **find . -name etc/passwd**: Busca el archivo "passwd" en el directorio "etc" dentro del directorio actual y sus subdirectorios.
17. **find / -name etc/passwd**: Busca el archivo "passwd" en el directorio "etc" en todo el sistema.
18. **mkdir ejercicio5**: Crea un directorio llamado "ejercicio5".

### Preguntas

(a) Instrucciones:
1. Inicie dos sesiones con su usuario.
2. En una sesión, ejecute los comandos anteriores.
3. En la otra sesión, cree el archivo "ejercicio10_explicacion" y escriba una breve descripción de cada comando que ejecutó y sus resultados.

(b) Completando comandos 19 y 20:
19. **cp -r iso <ruta_directorio_ejercicio_9.a>**: Copia el directorio "iso" y su contenido al directorio creado en el ejercicio 9.a.
20. **cp * <ruta_directorio_ejercicio_9.a>**: Copia todos los archivos y directorios (excepto "iso", que ya fue copiado) al directorio creado en el ejercicio 9.a.

(c) Ejecute los comandos 19 y 20 y añada las descripciones y resultados al archivo "ejercicio10_explicacion".

## 12. Creación de estructura y manipulación de archivos y directorios

Primero, se crea la estructura de directorios, subdirectorios y archivos. Asumiendo que el nombre del usuario es `usuario` y partiendo del directorio `/home/usuario`:

```bash
mkdir dir1 dir1/dir11 dir2 
touch f1 f2 dir1/f3 dir2/f4
```

### Comandos para las acciones solicitadas (suponiendo que estamos posicionados en `/home/usuario`):

1. **Mover el archivo "f3" al directorio de trabajo `/home/usuario`**:
   
```bash
mv dir1/f3 .
```

2. **Copiar el archivo "f4" en el directorio "dir11"**:
   
```bash
cp dir2/f4 dir1/dir11/
```

3. **Copiar el archivo "f4" en el directorio "dir11" con el nombre "f7"**:
   
```bash
cp dir2/f4 dir1/dir11/f7
```

4. **Crear el directorio "copia" dentro del directorio "usuario" y copiar el contenido de "dir1" en él**:
   
```bash
mkdir /home/usuario/copia
cp -r dir1/* /home/usuario/copia/
```

5. **Renombrar el archivo "f1" a "archivo" y ver sus permisos**:
   
```bash
mv dir1/f1 dir1/archivo
ls -l dir1/archivo
```

6. **Cambiar los permisos del archivo llamado "archivo"**:
   
```bash
chmod 617 dir1/archivo
```

7. **Renombrar los archivos "f3" y "f4" a "f3.exe" y "f4.exe" respectivamente**:
   
```bash
mv f3 f3.exe
mv dir1/dir11/f4 dir1/dir11/f4.exe
```

8. **Cambiar permisos de los archivos "f3.exe" y "f4.exe"**:
   
```bash
chmod 023 f3.exe dir1/dir11/f4.exe
```

## 13. Manipulación, empaquetamiento y compresión de archivos

### Comandos para las acciones solicitadas:

1. **Cree un directorio llamado logs en el directorio /tmp**:
   
```bash
mkdir /tmp/logs
```

2. **Copie todo el contenido del directorio /var/log en el directorio creado en el punto anterior**:
   
```bash
sudo cp -r /var/log/* /tmp/logs/
```

3. **Empaquete el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar"**:
   
```bash
sudo tar -cf misLogs.tar /tmp/logs
```

4. **Empaquete y comprima el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar.gz"**:
   
```bash
sudo tar -czf misLogs.tar.gz /tmp/logs
```

5. **Copie los archivos creados en 3 y 4 al directorio de trabajo de su usuario**:
   
```bash
cp misLogs.tar misLogs.tar.gz /home/usuario/iso
```

6. **Elimine el directorio creado en 1, logs**:
   
```bash
sudo rm -r /tmp/logs
```

7. **Desempaquete los archivos creados en 3 y 4 en 2 directorios diferentes**:
   
```bash
mkdir unpacked_tar unpacked_tar_gz
tar -xf misLogs.tar -C unpacked_tar/
tar -xzf misLogs.tar.gz -C unpacked_tar_gz/
```


