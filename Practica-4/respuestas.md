# Práctica 4 - Respuestas

## 1. Conceptos:

### (a) Programa y Proceso:
   **Programa:** Conjunto de instrucciones escritas en un lenguaje de programación, destinado a realizar una tarea específica. Es estático y reside en memoria secundaria.
   
   **Proceso:** Instancia en ejecución de un programa. Es un concepto dinámico e incluye el programa (código), los datos, el contador de programa, los registros y el estado del procesador.

### (b) Tiempo de Retorno (TR) y Tiempo de Espera (TE) para un Job:
   **TR (Tiempo de Retorno):** Tiempo transcurrido desde la llegada del job al sistema hasta que este ha completado su ejecución.
   
   **TE (Tiempo de Espera):** Tiempo total que el job pasa en la cola de listos, esperando para ser ejecutado.

### (c) Tiempo Promedio de Retorno (TPR) y Tiempo Promedio de Espera (TPE) para un lote de JOBS:
   **TPR (Tiempo Promedio de Retorno):** Es el promedio de los tiempos de retorno para un conjunto de jobs. Se calcula como (Suma de TR para cada job) / Número de jobs.
   
   **TPE (Tiempo Promedio de Espera):** Es el promedio de los tiempos de espera para un conjunto de jobs. Se calcula como (Suma de TE para cada job) / Número de jobs.

### (d) Quantum:
   **Quantum:** Tiempo máximo que un proceso puede ejecutarse antes de ser interrumpido y pasado al estado de listo en sistemas de planificación apropiativa.

### (e) Scheduling Apropiativo y No Apropiativo:
   **Apropiativo (Preemptive):** Permite interrumpir la ejecución de un proceso para asignar la CPU a otro proceso.
   
   **No Apropiativo (Non-Preemptive):** Una vez que un proceso comienza su ejecución, este se ejecuta hasta finalizar sin interrupciones.

### (f) Tareas de los Schedulers:
   **i. Short Term Scheduler:** Decide qué proceso en la cola de listos se ejecutará a continuación por la CPU.
   
   **ii. Long Term Scheduler:** Decide qué procesos son admitidos al sistema desde la cola de entrada.
   
   **iii. Medium Term Scheduler:** Realiza el intercambio (swapping) de procesos entre la memoria principal y el disco para balancear la carga y optimizar el uso de la memoria.

### (g) Tareas del Dispatcher:
   **Dispatcher:** Componente que da control de la CPU al proceso seleccionado por el short term scheduler, cambiando el estado del proceso, actualizando el contador de programa y cambiando el contexto si es necesario.


## 2. Procesos

### (a) Comandos:
   **i. top:** Muestra el uso de la CPU en tiempo real, estadísticas de memoria y una lista de procesos que están siendo ejecutados.
   
   **ii. htop:** Similar a top, pero con una interfaz más amigable y opciones adicionales para manipular procesos.
   
   **iii. ps:** Muestra el estado actual de los procesos en ejecución.
   
   **iv. pstree:** Muestra los procesos en ejecución en forma de árbol.
   
   **v. kill:** Envía una señal a un proceso, comúnmente utilizada para terminar un proceso.
   
   **vi. pgrep/pkill/killall:** Estos comandos permiten buscar y/o terminar procesos basándose en su nombre o en otros atributos.
   
   **vii. killall:** Similar a pkill, termina todos los procesos que coincidan con el nombre dado.
   
   **viii. renice:** Cambia la prioridad de ejecución de uno o más procesos.
   
   **ix. xkill:** Herramienta gráfica para terminar un proceso haciendo clic en la ventana correspondiente.
   
   **x. atop:** Herramienta avanzada que muestra el rendimiento del sistema y los recursos.

### (b) Análisis de Código en C:
   **i. 8 líneas con la palabra "Proceso" se mostrarán.**
   **ii. No, el número de líneas no es igual al número de procesos. Cada proceso imprimirá "Proceso".**

### (c) Variante del Programa en C:
   **i. Se mostrarán varios valores diferentes, cada uno dependiendo del número de procesos hijos creados.**
   **ii. Algunas líneas tendrán valores distintos debido a la creación de procesos hijos.**
   **iii. Los valores variarán entre 1 y 2.**

### (d) Comunicación entre Procesos:
   **i. Pipes permiten la comunicación entre procesos, transfiriendo datos de un proceso a otro.**
   **ii. Se crea un pipe en C usando la función pipe().**
   **iii. La función pipe() requiere un array de dos enteros como parámetro. Este array se usa para leer y escribir datos.**
   **iv. Los pipes permiten la comunicación unidireccional entre procesos.**

### (e) Información del Proceso:
   La información mínima que el SO debe tener sobre un proceso incluye su ID, estado, contador de programa, registros, y la información de gestión de memoria. Esta información se almacena en la PCB (Process Control Block).

### (f) CPU Bound y I/O Bound:
   **CPU Bound:** Un proceso que pasa más tiempo realizando cálculos y menos en operaciones de entrada/salida.
   **I/O Bound:** Un proceso que pasa más tiempo esperando operaciones de entrada/salida que realizando cálculos.

### (g) Estados de un Proceso:
   Los estados posibles son: Nuevo, Listo, Ejecución, Espera y Terminado.

### (h) Diagrama de Transiciones:

```rust
"Nuevo" -> "Listo" -> "Ejecución" -> "Terminado"
     ^             |
     |             v
     <- "Espera"

```

### (i) Scheduler Responsable de las Transiciones:
El Short Term Scheduler (Planificador a Corto Plazo) es responsable de las transiciones entre los estados Listo, Ejecución y Espera.

## 3. Algoritmos de Scheduling:

### 3.1 FCFS (First Come First Served)
#### (a) Funcionamiento mediante un ejemplo:
   - Procesos: P1(5), P2(3), P3(8) (número representa unidades de tiempo)
   - Orden de ejecución: P1 -> P2 -> P3
   - P1 se ejecuta primero por completo, seguido por P2 y finalmente P3.

#### (b) ¿Alguno de ellos requiere algún parámetro para su funcionamiento?
   - No requiere parámetros adicionales.

#### (c) Cual es el mas adecuado según los tipos de procesos y/o SO.
   - Más adecuado para procesos con tiempos de ejecución predecibles y similares.

#### (d) Cite ventajas y desventajas de su uso.
   - Ventajas: Simplicidad.
   - Desventajas: Ineficiente en términos de tiempo de respuesta y tiempo de espera.

### 3.2 SJF (Shortest Job First)
#### (a) Funcionamiento mediante un ejemplo:
   - Procesos: P1(5), P2(3), P3(8)
   - Orden de ejecución: P2 -> P1 -> P3
   - El proceso con el menor tiempo de ejecución se ejecuta primero.

#### (b) ¿Alguno de ellos requiere algún parámetro para su funcionamiento?
   - No requiere parámetros adicionales, pero necesita conocer de antemano el tiempo de ejecución de cada proceso.

#### (c) Cual es el mas adecuado según los tipos de procesos y/o SO.
   - Adecuado para sistemas donde el tiempo de ejecución de los procesos es predecible y consistente.

#### (d) Cite ventajas y desventajas de su uso.
   - Ventajas: Proporciona el mínimo tiempo de espera para un conjunto dado de procesos.
   - Desventajas: Puede causar inanición para procesos con tiempos de ejecución largos.

### 3.3 Round Robin
#### (a) Funcionamiento mediante un ejemplo:
   - Quantum de tiempo: 4 unidades
   - Procesos: P1(5), P2(3), P3(8)
   - Orden de ejecución: P1 -> P2 -> P3 -> P1 -> P3
   - Cada proceso se ejecuta por un tiempo igual al quantum o hasta que termine.

#### (b) ¿Alguno de ellos requiere algún parámetro para su funcionamiento?
   - Requiere el quantum de tiempo como parámetro.

#### (c) Cual es el mas adecuado según los tipos de procesos y/o SO.
   - Adecuado para sistemas interactivos y de tiempo compartido.

#### (d) Cite ventajas y desventajas de su uso.
   - Ventajas: Todos los procesos tienen garantizado un tiempo de CPU.
   - Desventajas: El rendimiento depende de la longitud del quantum de tiempo.

### 3.4 Prioridades
#### (a) Funcionamiento mediante un ejemplo:
   - Procesos: P1(5, prioridad 1), P2(3, prioridad 2), P3(8, prioridad 3)
   - Orden de ejecución: P1 -> P2 -> P3
   - El proceso con la mayor prioridad se ejecuta primero.

#### (b) ¿Alguno de ellos requiere algún parámetro para su funcionamiento?
   - Cada proceso debe tener una prioridad asignada.

#### (c) Cual es el mas adecuado según los tipos de procesos y/o SO.
   - Adecuado para sistemas donde algunos procesos son más importantes que otros.

#### (d) Cite ventajas y desventajas de su uso.
   - Ventajas: Permite dar más recursos a procesos críticos.
   - Desventajas: Puede llevar a inanición de procesos de baja prioridad.

## 4. Round Robin con Timer Variable y Timer Fijo
### (a) ¿Qué significan estas 2 variantes?
   - **Timer Fijo:** El quantum de tiempo es constante para todos los procesos.
   - **Timer Variable:** El quantum de tiempo puede ajustarse dinámicamente según la necesidad.

### (b) Explique mediante un ejemplo sus diferencias.
   - **Timer Fijo:** Si se establece un quantum de 4 unidades de tiempo, todos los procesos recibirán exactamente 4 unidades de tiempo por turno, independientemente de su comportamiento o neces

### (c) En cada variante ¿Dónde debería residir la información del Quantum?
   - **Timer Fijo:** La información del quantum generalmente reside en el sistema operativo, ya que es un valor constante y aplicado globalmente a todos los procesos.
   - **Timer Variable:** La información del quantum podría residir tanto en el sistema operativo como en la estructura de control de cada proceso, dado que el quantum puede ajustarse dinámicamente para cada proceso según su comportamiento o necesidades específicas. Esto podría requerir mecanismos adicionales para determinar y ajustar el quantum de tiempo para cada proceso.

## 6
### (c) Comparación de Algoritmos

- **FCFS:** Es simple, pero puede llevar a la anomalía de convoy, donde procesos cortos deben esperar mucho tiempo por procesos largos.
- **SJF:** Minimiza el tiempo de espera, pero es difícil de implementar porque requiere conocimiento previo de la duración de los jobs.
- **Round Robin con quantum = 1:** Ofrece respuesta rápida para todos los procesos, pero aumenta el tiempo de espera y retorno.
- **Round Robin con quantum = 6:** Balance entre tiempo de espera y retorno. Puede ser una buena opción si los procesos tienen duraciones variadas.

### 6(d) Conclusión sobre el Valor del Quantum en Round Robin

El valor del quantum afecta directamente el rendimiento del algoritmo Round Robin. Un quantum demasiado pequeño puede llevar a un alto overhead y tiempos de espera largos, mientras que un quantum demasiado grande puede hacer que el algoritmo se comporte más como FCFS, con largos tiempos de espera para procesos cortos.

### 6(e) Uso de Valor de Quantum Alto en Round Robin

- **Casos de Uso:** Cuando los procesos tienen duraciones similares o cuando se desea minimizar el cambio de contexto.
- **Ventajas:** Menos cambio de contexto, lo que puede llevar a un mejor rendimiento si el overhead de cambio de contexto es significativo.
- **Desventajas:** Puede llevar a tiempos de espera largos para procesos cortos, especialmente si llegan mientras un proceso largo se está ejecutando.

## 7. Algoritmo SRTF (Shortest Remaining Time First)

### (b) Ventajas frente a otros algoritmos
- **Respuesta Rápida para Jobs Cortos:** El algoritmo SRTF proporciona tiempos de respuesta muy rápidos para los procesos que son cortos en duración.
- **Utilización Eficiente de la CPU:** Dado que siempre se está ejecutando el job que se puede completar más rápidamente, la CPU se utiliza de manera muy eficiente.
- **Minimiza el Tiempo de Espera:** En general, el algoritmo SRTF tiende a minimizar el tiempo de espera para los procesos.


### (b) Cálculo de TR y TE, TPR y TPE
Para responder a esta pregunta, se necesita realizar cálculos basados en los diagramas de Gantt proporcionados y los tiempos de llegada y ejecución de cada job. Sin embargo, estos cálculos son específicos del conjunto de trabajos y tiempos proporcionados.

### (c) Ventajas, Situaciones de Uso y Relevancia de Prioridades
- **Ventajas:** El algoritmo de planificación por prioridades permite dar atención preferente a procesos críticos o importantes.
- **Situaciones de Uso:** Es útil en sistemas en los que algunos procesos son más críticos que otros, como en sistemas de tiempo real o sistemas operativos de misión crítica.
- **Relevancia de Prioridades:** En sistemas donde todos los procesos son igualmente importantes o en sistemas batch sin interacción del usuario, la implementación de prioridades podría no ser tan relevante.

# 9. Inanición (Starvation)

## (a) ¿Qué significa?

La inanición en el contexto de los algoritmos de planificación se refiere a la situación en la que un proceso nunca recibe tiempo de CPU para ejecutarse debido a la competencia con otros procesos. Este fenómeno ocurre cuando un proceso es continuamente pasado por alto o pospuesto a favor de otros procesos, resultando en una espera indefinida.

## (b) ¿Cuál/es de los algoritmos vistos puede provocarla?

La inanición es más probable que ocurra en los algoritmos de planificación basados en prioridades y en Shortest Job First (SJF) o su variante apropiativa Shortest Remaining Time First (SRTF). 

- **SJF y SRTF:** Un proceso largo puede sufrir inanición porque siempre se eligen procesos más cortos para ejecutarse primero.
- **Planificación por Prioridades:** Un proceso con baja prioridad puede sufrir inanición si continuamente llegan procesos con prioridades más altas.

## (c) ¿Existe alguna técnica que evite la inanición para el/los algoritmos mencionados en b?

Sí, existen varias técnicas para evitar o mitigar la inanición:

- **Envejecimiento (Aging):** Esta técnica incrementa gradualmente la prioridad de un proceso en espera, asegurando que eventualmente alcance una prioridad suficientemente alta para ser ejecutado.
- **Feedback:** El sistema operativo puede ajustar dinámicamente las prioridades basándose en el comportamiento de los procesos y su tiempo de espera.
- **Cuotas de Tiempo:** Asignar cuotas de tiempo asegura que todos los procesos reciban al menos una porción del tiempo de CPU.

Implementando estas técnicas, los sistemas pueden asegurar que todos los procesos reciban atención y se reduzca el riesgo de inanición.
