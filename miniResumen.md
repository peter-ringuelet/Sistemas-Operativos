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
- **Modo Usuario y Modo Supervisor**: Niveles de privilegio para ejecutar instrucciones.
- **Protección de Memoria**: Mecanismos para evitar acceso no autorizado.

## Conclusiones
El SO es fundamental para el funcionamiento de una computadora, gestionando recursos y proporcionando una interfaz entre el hardware y los programas de aplicación. Comprender sus componentes y funcionamiento es clave para la administración eficiente de un sistema informático.
