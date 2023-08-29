# Práctica de GNU/Linux

## 1. Características de GNU/Linux

### a) Características más relevantes de GNU/Linux

- **Código Abierto**: Permite a los usuarios y desarrolladores acceder y modificar el código fuente.
- **Seguridad**: Diseñado con un fuerte enfoque en la seguridad.
- **Estabilidad y Fiabilidad**: Raramente experimenta fallos o requiere reinicios.
- **Portabilidad**: Compatible con una amplia gama de hardware.
- **Multitarea y Multiusuario**: Soporte para múltiples tareas y usuarios.
- **Escalabilidad**: Capaz de manejar diferentes tipos de hardware.
- **Comunidad Activa**: Fuerte soporte de la comunidad.
- **Sistema de Archivos**: Soporta múltiples sistemas de archivos.

### b) Comparación con otros Sistemas Operativos

- **Windows**: Propietario, menos seguro, más susceptible a malware.
- **macOS**: Propietario, basado en Unix, limitada personalización.
- **FreeBSD**: Código abierto pero con diferencias en licencias y diseño del núcleo.

### c) ¿Qué es GNU?

GNU significa "GNU's Not Unix" y es un proyecto para crear un sistema operativo libre.

### d) Historia de GNU

- **1983**: Anuncio del proyecto GNU.
- **1985**: Creación de la Free Software Foundation.
- **1991**: Liberación del núcleo Linux, se combina con GNU.

### e) Multitarea

La multitarea es la capacidad de ejecutar múltiples tareas simultáneamente. GNU/Linux soporta multitarea.

### f) ¿Qué es POSIX?

POSIX es un estándar para asegurar la compatibilidad entre sistemas operativos. GNU/Linux es compatible con POSIX.

## 2. Distribuciones de GNU/Linux

### a) ¿Qué es una distribución de GNU/Linux?

Una distribución es el núcleo Linux más un conjunto de software. Ejemplos incluyen:

- **Ubuntu**: Fácil de usar, basado en Debian.
- **Fedora**: Foco en las últimas tecnologías.
- **Debian**: Estable, ideal para servidores.
- **Arch Linux**: Para usuarios avanzados.

### b) Diferencias entre distribuciones

- Gestión de paquetes.
- Enfoque (usuario final, estabilidad, actualizaciones).
- Comunidad y soporte.

### c) ¿Qué es Debian?

Debian es una distribución antigua y estable, con un enfoque en la libertad y la estabilidad del software.

## 3. Estructura de GNU/Linux

### a) Componentes fundamentales

1. **Kernel (Núcleo)**: Gestiona recursos.
2. **Shell**: Interfaz de usuario.
3. **Utilidades del Sistema**: Herramientas adicionales.

### b) Estructura básica del Sistema Operativo

- **/bin, /sbin**: Binarios esenciales.
- **/etc**: Archivos de configuración.
- **/home**: Directorios de usuario.
- **/usr**: Programas y bibliotecas.
- **/var**: Archivos variables como registros.
- **/dev**: Archivos de dispositivos.

## 4. Kernel

### a) ¿Qué es el Kernel? Reseña histórica

El **Kernel** o núcleo es la parte central de un sistema operativo que se encarga de gestionar los recursos de hardware y proveer servicios a las aplicaciones. En el caso de GNU/Linux, el Kernel Linux fue creado inicialmente por Linus Torvalds en 1991 como un proyecto de hobby mientras estudiaba en la Universidad de Helsinki.

### b) Funciones principales del Kernel

1. **Gestión de Memoria**: Asigna y administra la memoria RAM y el cache.
2. **Planificación de Procesos**: Controla la ejecución de procesos.
3. **Gestión de E/S**: Maneja las operaciones de entrada/salida.
4. **Gestión de Archivos**: Controla cómo se leen, escriben y acceden a los archivos.
5. **Seguridad y Acceso**: Implementa políticas de seguridad y permisos.

### c) Versionado del Kernel

La versión más reciente del kernel Linux es la 5.19. El esquema de versionado cambió varias veces. Antes de la versión 2.4, el esquema era bastante simple y seguía el formato `major.minor.patch`. A partir de la versión 2.6, se adoptó un sistema más flexible que permitía cambios más rápidos y características experimentales.

### d) ¿Múltiples Kernels?

Sí, es posible tener más de un kernel instalado en la misma máquina, y puedes elegir cuál usar en el arranque.

### e) Ubicación en el File System

Generalmente, los archivos del kernel se encuentran en `/boot`.

### f) ¿Es monolítico?

Sí, el Kernel de GNU/Linux es monolítico, aunque es modular. Esto significa que el núcleo principal se ejecuta en un espacio único, pero puede cargar o descargar módulos en tiempo de ejecución.

## 5. Intérprete de Comandos (Shell)

### a) ¿Qué es el Shell?

El **Shell** es una interfaz de usuario que permite interactuar con el sistema operativo mediante comandos de texto.

### b) Funciones del Shell

1. **Interpretar Comandos**: Ejecuta comandos y aplicaciones.
2. **Gestión de Archivos**: Permite la manipulación de archivos y directorios.
3. **Redirección y Tuberías**: Redirige la salida de un comando a otro.
4. **Control de Procesos**: Inicia, pausa y termina procesos.
5. **Scripting**: Permite crear scripts para automatizar tareas.

### c) Intérpretes de Comandos en GNU/Linux

1. **Bash**: El más popular, rico en características.
2. **Zsh**: Extensible, con muchas características útiles.
3. **Fish**: Diseñado para ser amigable y fácil de usar.

### d) Ubicación de los Comandos

Los comandos propios del shell (built-ins) no tienen una ubicación en el sistema de archivos ya que están integrados en el propio shell. Los comandos externos generalmente se encuentran en `/bin`, `/sbin`, `/usr/bin`, o `/usr/sbin`.

### e) ¿Por qué el Shell no es parte del Kernel?

El Shell es una interfaz de usuario para interactuar con el kernel, pero no realiza funciones de bajo nivel como el kernel. Por lo tanto, se considera una utilidad del sistema y no una parte del kernel.

### f) ¿Intérprete de comandos distinto para cada usuario?

Sí, es posible asignar un shell diferente para cada usuario. Esta configuración generalmente se encuentra en el archivo `/etc/passwd`. Solo el administrador o root pueden cambiar el shell de un usuario.

## 6. Sistema de Archivos (File System)

### a) ¿Qué es el Sistema de Archivos?

El **Sistema de Archivos (File System)** es la estructura que utiliza un sistema operativo para controlar cómo se almacenan y recuperan los archivos en un disco.

### b) Sistemas de Archivos soportados

GNU/Linux soporta una amplia variedad de sistemas de archivos, incluidos:

- **Ext3/Ext4**: Tradicionalmente utilizados en Linux.
- **XFS**: Adecuado para grandes cantidades de datos.
- **Btrfs**: Centrado en la replicación y la escalabilidad.
- **NTFS**: Utilizado en sistemas Windows.
- **FAT32**: Utilizado para compatibilidad y en dispositivos flash.

### c) Visualizar FAT y NTFS

Sí, es posible visualizar y montar particiones **FAT** y **NTFS** en GNU/Linux.

### d) Estructura básica y FHS

La estructura básica del sistema de archivos en GNU/Linux se adhiere generalmente al estándar **FHS (Filesystem Hierarchy Standard)**. Los directorios más importantes y su contenido son:

- **/bin**: Binarios esenciales.
- **/etc**: Archivos de configuración.
- **/home**: Espacio para datos de usuarios.
- **/usr**: Aplicaciones y archivos compartidos.
- **/var**: Archivos de datos variables como logs.
  
## 7. Particiones

### a) Definición, Tipos, Ventajas y Desventajas

Una **partición** es una subdivisión de un disco duro. Los tipos comunes incluyen particiones **primarias**, **extendidas** y **lógicas**.

- **Ventajas**: Permite una mejor organización, múltiples sistemas operativos, y diferentes sistemas de archivos.
- **Desventajas**: Puede complicar la gestión del espacio del disco.

### b) Identificación en GNU/Linux

- **IDE**: Suelen ser `/dev/hda1`, `/dev/hda2`, etc.
- **SCSI/SATA**: Suelen ser `/dev/sda1`, `/dev/sda2`, etc.

### c) Particiones mínimas

Como mínimo, para una instalación básica de GNU/Linux generalmente se necesitan:

- Una partición de tipo **root** (`/`), generalmente como **ext4**, montada en `/`.
- Una partición de tipo **swap**, utilizada como memoria virtual.

### d) Ejemplos de particionamiento

- **Servidor Web**: Una partición para `/`, otra para `/var/www`.
- **Estación de Trabajo**: Particiones separadas para `/`, `/home`, `/usr`, etc.

### e) Software para particionar

Algunas opciones incluyen:

- **GParted**: Interfaz gráfica, fácil de usar.
- **fdisk**: Basado en consola, más control pero más complejo.
- **parted**: Similar a fdisk pero con más características.
- **cfdisk**: Otra opción basada en consola, más amigable que fdisk.

Cada una tiene sus ventajas y desventajas, que van desde la facilidad de uso hasta la cantidad de control que ofrecen al usuario.

## 8. Arranque (Bootstrap) de un Sistema Operativo

### a) ¿Qué es el BIOS? ¿Qué tarea realiza?

**BIOS (Basic Input/Output System)** es un firmware que inicializa el hardware durante el proceso de arranque. Su tarea principal es preparar el sistema para cargar el sistema operativo.

### b) ¿Qué es UEFI? ¿Cuál es su función?

**UEFI (Unified Extensible Firmware Interface)** es un estándar que reemplaza al BIOS. Su función es similar, pero ofrece más funciones y seguridad.

### c) ¿Qué es el MBR? ¿Qué es el MBC?

**MBR (Master Boot Record)** es un sector especial en el disco duro que contiene información sobre cómo están organizadas las particiones y dónde está el gestor de arranque. MBC no es un término estándar en este contexto; tal vez te refieres a otro término.

### d) GPT y su formato

**GPT (GUID Partition Table)** es un estándar que reemplaza al MBR. Ofrece una forma más flexible y robusta de gestionar particiones.

### e) Gestor de Arranque

Un **Gestor de Arranque** es un programa que carga el sistema operativo en la memoria. Algunos gestores conocidos son GRUB, LILO y Syslinux. Generalmente, se instalan en el MBR o el área de arranque de una partición.

### f) Proceso de Bootstrap

1. **Encendido de la máquina**: Inicio del hardware.
2. **BIOS o UEFI**: Inicialización de hardware y búsqueda de dispositivos de arranque.
3. **Carga del Gestor de Arranque**: Desde el MBR o GPT.
4. **Carga del Kernel**: El gestor de arranque carga el kernel en la memoria.
5. **Inicialización del SO**: El kernel carga el sistema operativo.

### g) Arranque en GNU/Linux

1. **GRUB o LILO**: Selecciona el kernel.
2. **Carga del Kernel**: Inicio del kernel de Linux.
3. **init o systemd**: El primer proceso que se ejecuta.
4. **Procesos de Usuario**: Inicio de la interfaz de usuario.

### h) Proceso de Parada en GNU/Linux

1. **Envío de señal de apagado**.
2. **Terminación de Procesos**.
3. **Desmontaje de Filesystems**.
4. **Apagado del hardware**.

### i) ¿Es posible tener GNU/Linux y otro SO?

Sí, es posible tener múltiples sistemas operativos en una máquina a través de un proceso conocido como **dual-booting**.

## 9. Archivos

### a) Identificación de archivos en GNU/Linux

Los archivos en GNU/Linux no dependen de extensiones, pero por convención se usan para identificar el tipo.

### b) Editores y Comandos

- **vi**: Editor de texto en terminal. 
- **mcedit**: Editor en un entorno más gráfico dentro del terminal.
- **cat**: Muestra el contenido de un archivo.
- **more**: Muestra el contenido de un archivo paginado.

### c) Crear un archivo

Para crear un archivo llamado `prueba.exe` con vi:

```bash
vi prueba.exe
```

Una vez dentro del editor, puedes insertar tu número de alumno y tu nombre. Para hacerlo:

1. Presiona `i` para entrar en el modo de inserción.
2. Escribe tu número de alumno y tu nombre.
3. Presiona `Esc` para salir del modo de inserción.
4. Escribe `:wq` y presiona `Enter` para guardar los cambios y salir del editor.

### d) Comando file

El comando `file` determina el tipo de archivo. Al probarlo en diferentes archivos, notarás que identifica el tipo incluso si no tiene una extensión.


