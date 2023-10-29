# Resumen Extensivo para el Parcial de Sistemas Operativos

## Introducción
Un Sistema Operativo (SO) es un software fundamental en cualquier computadora, actuando como intermediario entre los usuarios, las aplicaciones y el hardware. Su objetivo principal es mejorar la eficiencia de la máquina, gestionar los recursos de hardware y proporcionar un conjunto de servicios a los programas de aplicación.

## Tipos de Sistemas Operativos

### Monousuario vs Multiusuario
- **Monousuario**: Un único usuario tiene control total de la máquina. Ejemplos incluyen sistemas operativos de dispositivos personales.
- **Multiusuario**: Permite que múltiples usuarios accedan y utilicen los recursos del sistema de forma simultánea, a menudo a través de una red.

### Monotarea vs Multitarea
- **Monotarea**: Solo se puede ejecutar un programa o tarea a la vez. Cualquier otro programa debe esperar a que el actual termine.
- **Multitarea**: Permite la ejecución concurrente de varios procesos, mejorando la eficiencia y el aprovechamiento de la CPU.

## Procesos

### Creación y Gestión
- **Proceso**: Instancia de un programa en ejecución. Cada proceso tiene su propio espacio de memoria y estado.
- **System Call**: Mecanismo por el cual un programa puede solicitar un servicio al SO, como la creación de un proceso, operaciones de E/S, etc.
- **PCB (Process Control Block)**: Estructura de datos que contiene toda la información necesaria para gestionar un proceso, incluyendo su estado, contador de programa, registros, etc.
- **Scheduler**: Componente del SO que decide qué proceso se debe ejecutar a continuación, basándose en un algoritmo de planificación.

### Estados de un Proceso
- **Nuevo**: El proceso ha sido creado.
- **Listo**: El proceso está listo para ser ejecutado por la CPU.
- **Ejecución**: El proceso está siendo ejecutado.
- **Bloqueado**: El proceso está esperando a que ocurra un evento o se complete una operación de E/S.
- **Terminado**: El proceso ha completado su ejecución.

### Planificación de CPU
- **Objetivos**: Maximizar la utilización de la CPU y minimizar el tiempo de respuesta y espera de los procesos.
- **Algoritmos**: Incluyen First Come First Served (FCFS), Round Robin, Prioridades, entre otros, cada uno con sus ventajas y desventajas dependiendo del tipo de procesos y requerimientos del sistema.

## Memoria

### Gestión de Memoria
- **Monoprogramación**: Un solo programa en memoria a la vez.
- **Multiprogramación**: Múltiples programas residen en memoria, permitiendo un mejor aprovechamiento de los recursos.
- **Particiones**: División de la memoria en secciones para asignar a los procesos. Pueden ser fijas o dinámicas.

### Paginación y Segmentación
- **Paginación**: Divide la memoria y los procesos en bloques de tamaño fijo, reduciendo la fragmentación y simplificando la gestión de memoria.
- **Segmentación**: Divide la memoria y los procesos en segmentos de tamaño variable, basándose en la lógica de los programas.

## Entrada/Salida (E/S)

### Dispositivos y Drivers
- **Dispositivos**: Hardware a través del cual la computadora recibe y envía datos.
- **Drivers**: Programas que permiten al SO comunicarse y controlar los dispositivos de E/S.

### Colas de E/S
- **Colas**: Estructuras que almacenan solicitudes de operaciones de E/S pendientes, permitiendo su gestión y planificación.

## Interrupciones y Traps
- **Interrupciones**: Señales generadas por el hardware o software para indicar la ocurrencia de un evento, requiriendo la atención del SO.
- **Traps**: Interrupciones generadas por errores o solicitudes explícitas de los programas para servicios del SO.

## Sistemas de Archivos
- **Sistema de Archivos**: Organiza, almacena, y gestiona el acceso a los datos en los dispositivos de almacenamiento.
- **Directorios**: Estructuras que organizan los archivos, permitiendo una navegación y acceso más sencillo.

## Seguridad y Protección
- **Modo Usuario y Modo Supervisor**: Niveles de privilegio para ejecutar instrucciones y acceder a recursos del sistema. El modo supervisor (o kernel) tiene acceso completo al hardware y a todas las direcciones de memoria, mientras que el modo usuario tiene restricciones para proteger el sistema y los datos.

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

## Conclusión

Los Sistemas Operativos son componentes cruciales en la informática moderna, proporcionando una capa de abstracción entre el hardware y las aplicaciones, gestionando los recursos de manera eficiente y ofreciendo servicios esenciales para el funcionamiento de los programas. Comprender su funcionamiento, los tipos de sistemas operativos, la gestión de procesos y memoria, y los mecanismos de sincronización y comunicación, es vital para cualquier estudiante o profesional en el campo de la informática.

