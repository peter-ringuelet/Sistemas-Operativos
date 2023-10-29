# Tema 1
## Clase 1

### Sistema Operativo
es un software que actúa como intermediario entre el usuario de una computadora y su hardware.

#### Es software dado que 
- Necesita procesador y memoria para ejecutarse
- Gestiona el HW (Hardware)
- Controla la ejecución de los procesos 
- Interfaz entre aplicaciones y HW 
- Actúa como intermediario entre un usuario de una computadora y el HW de la misma

### Dos perspectivas o miradas 

#### Desde el usuario (de arriba hacia abajo) 
- Abstracción con respecto a la arquitectura (Arquitectura: conjunto de instrucciones, organización de memoria, E/S, estructura de bus) 
- El SO “oculta” el HW y presenta a los programas abstracciones más simples de manejar. 
-  Los programas de aplicación son los “clientes” del SO. 
- Comparación: uso de escritorio y uso de comandos de texto 
- Comodidad, “amigabilidad” (friendliness)

#### Desde el sistema o desde la administración de recursos (de abajo hacia arriba)
- Administra los recursos de HW de uno o más procesos 
- Provee un conjunto de servicios a los usuarios del sistema 
- Maneja la memoria secundaria y dispositivos de I/O. 
- Ejecución simultánea de procesos 
- Multiplexación en tiempo (CPU) y en espacio (memoria)

### Objetivos de los SO
**Comodidad**: Hacer mas fácil el uso del hardware (PC, servidor, switch, router, controlador específico) 
**Eficiencia**: Hacer un uso más eficiente de los recursos del sistema 
**Evolución**: Permitir la introducción de nuevas funciones al sistema sin interferir con funciones anteriores

### Componentes de un SO
**Kernel** 
**Shell** (GUI / CUI o CLI) 
**Herramientas** (Editores, Compiladores, Librerías, etc.)

### Kernel (Nucle)
**“Porción de código”**
- Que se encuentra en memoria principal 
- Que se encarga de la administración de los recursos. 
**Implementa servicios esenciales**
- Manejo de memoria 
- Manejo de la CPU 
- Administración de procesos 
- Comunicación y Concurrencia 
- Gestión de la E/S

### Servicios de un SO
**Administración y planificación del procesador**
- Multiplexación de la carga de trabajo 
- Imparcialidad, “justicia” en la ejecución (Fairness) 
- Que no haya bloqueos 
- Manejo de Prioridades

**Administración de Memoria**
- Administración de memoria eficientemente 
- Memoria física vs memoria virtual. Jerarquías de memoria 
- Protección de programas que compiten o se ejecutan concurrentemente

**Administración del almacenamiento-Sistema de archivos**
- Acceso a medios de almacenamiento externos 

**Administración de dispositivos**
- Ocultamiento de dependencias de HW 
- Administración de accesos simultáneos

**Detección de errores y respuestas** 
- Errores de HW internos y Externos (Errores de Memoria/CPU, Errores de Dispositivos) 
- Errores de SW (Errores Aritméticos, Acceso no permitido a direcciones de memoria) 
- Incapacidad del SO para conceder una solicitud de una aplicación

**Interacción del Usuario (Shell)**
**Contabilidad** 
- Recoger estadísticas del uso 
- Monitorear parámetros de rendimiento 
- Anticipar necesidades de mejoras futuras 
- Dar elementos si es necesario facturar tiempo de procesamiento

### Complejidad 
- Un SO es un software extenso y complejo 
- Es desarrollado por partes 
- Cada una de estas partes deben ser analizadas y desarrolladas entendiendo su función, cuáles son sus entradas y sus salidas.