# Resumen para el Parcial de Sistemas Operativos

## Introducción
Un Sistema Operativo (SO) es un conjunto de programas que gestiona los recursos del hardware y proporciona servicios a los programas de aplicación. Actúa como intermediario entre el usuario y la computadora.

## Tipos de Sistemas Operativos

### Monousuario vs Multiusuario
- **Monousuario**: Un solo usuario puede acceder a la computadora a la vez.
- **Multiusuario**: Varios usuarios pueden acceder a la computadora simultáneamente.

### Monotarea vs Multitarea
- **Monotarea**: Un solo proceso se ejecuta a la vez.
- **Multitarea**: Varios procesos se ejecutan al mismo tiempo.

## Procesos

### Creación y Gestión
- **Proceso**: Un programa en ejecución.
- **System Call**: Llamada al sistema para solicitar un servicio del SO.
- **PCB (Process Control Block)**: Estructura de datos que guarda el estado de un proceso.
- **Scheduler**: Programa que decide qué proceso se debe ejecutar.

### Estados de un Proceso
- **Nuevo**: Proceso creado.
- **Listo**: Proceso listo para ejecutarse.
- **Ejecución**: Proceso en ejecución.
- **Bloqueado**: Proceso esperando un evento.
- **Terminado**: Proceso ha terminado su ejecución.

### Planificación de CPU
- **Objetivos**: Maximizar la utilización de la CPU y minimizar el tiempo de respuesta.
- **Algoritmos**: FCFS, Round Robin, Prioridad, etc.

## Memoria

### Gestión de Memoria
- **Monoprogramación**: Un solo programa en memoria.
- **Multiprogramación**: Varios programas en memoria.
- **Particiones**: Divisiones fijas o dinámicas de la memoria.

### Paginación y Segmentación
- **Paginación**: Divide la memoria en bloques fijos.
- **Segmentación**: Divide la memoria en segmentos de tamaño variable.

## Entrada/Salida

### Dispositivos y Drivers
- **Dispositivos**: Hardware para entrada y salida de datos.
- **Drivers**: Software para controlar dispositivos.

### Colas de E/S
- **Colas**: Estructuras para gestionar peticiones de E/S.

## Interrupciones y Traps
- **Interrupciones**: Señales para indicar eventos externos.
- **Traps**: Interrupciones generadas por errores o solicitudes.

## Sistemas de Archivos
- **Sistema de Archivos**: Organiza y gestiona el almacenamiento persistente.
- **Directorios**: Estructuras para organizar archivos.

## Seguridad y Protección
- **Modo Usuario y Modo Supervisor**: Niveles de privilegio para ejecutar instrucciones. El modo supervisor (o kernel) tiene acceso completo al hardware y a todas las direcciones de memoria, mientras que el modo usuario tiene restricciones para proteger el sistema y los datos.
- **Protección de Memoria**: Mecanismos para evitar acceso no autorizado.

## Conclusiones
El SO es fundamental para el funcionamiento de una computadora, gestionando recursos y proporcionando una interfaz entre el hardware y los programas de aplicación. Comprender sus componentes y funcionamiento es clave para la administración eficiente de un sistema informático.

## Cambios de Contexto y Modo

### Cambio de Contexto
- Se refiere al proceso de guardar el estado de un proceso en ejecución para luego cargar el estado de otro proceso a ejecutar. Involucra la actualización de la PCB y otros registros.

### Cambio de Modo
- Se produce cuando se realiza una transición entre el modo usuario y el modo supervisor. Esto es común durante las interrupciones y las llamadas al sistema.

## Planificación a Largo, Mediano y Corto Plazo

### Scheduler de Largo Plazo
- Decide qué procesos se admiten en el sistema para su ejecución. Afecta directamente al grado de multiprogramación.

### Scheduler de Mediano Plazo
- Se encarga de decidir qué procesos deben ser llevados a memoria y cuáles deben ser swappeados para optimizar el uso de la CPU y la memoria.

### Scheduler de Corto Plazo
- Es el que realmente asigna tiempo de CPU a los procesos en memoria, decidiendo cuál debe ejecutarse en un momento dado.

## Sincronización y Comunicación entre Procesos
- Los procesos a menudo necesitan coordinar sus acciones y compartir datos. Esto requiere mecanismos de sincronización para evitar condiciones de carrera y asegurar la consistencia de los datos.