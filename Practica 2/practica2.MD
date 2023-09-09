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

