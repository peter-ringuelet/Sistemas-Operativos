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

Mi conocimiento está limitado hasta septiembre de 2021, hasta esa fecha la versión más reciente del kernel Linux era la 5.14. El esquema de versionado cambió varias veces. Antes de la versión 2.4, el esquema era bastante simple y seguía el formato `major.minor.patch`. A partir de la versión 2.6, se adoptó un sistema más flexible que permitía cambios más rápidos y características experimentales.

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

