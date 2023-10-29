# Repaso 1er. Parcial Teórico

1. **¿El SO necesita tiempo de CPU?**
   - Sí, el Sistema Operativo necesita tiempo de CPU para ejecutar sus propios procesos y servicios, gestionar la planificación de procesos, manejar interrupciones, y realizar otras tareas esenciales.

2. **¿Pueden convivir en un mismo SO procesos batch y procesos interactivos?**
   - Sí, un mismo sistema operativo puede manejar tanto procesos batch (por lotes) como procesos interactivos, aunque la planificación y gestión de estos puede ser más compleja.

3. **¿Puede un sistema monousuario ser multitarea?**
   - Sí, un sistema monousuario puede ser multitarea, permitiendo así que un único usuario ejecute múltiples aplicaciones o procesos al mismo tiempo.

4. **¿Puede un sistema multiusuario ser monotarea?**
   - Aunque es técnicamente posible, es muy poco común y no sería práctico, ya que uno de los beneficios principales de un sistema multiusuario es la capacidad de manejar múltiples tareas simultáneamente para diferentes usuarios.

5. **¿Puede un programa ejecutarse desde el disco?**
   - No, un programa necesita ser cargado en la memoria RAM para ejecutarse. Sin embargo, partes de un programa pueden ser cargadas y ejecutadas desde el disco mediante técnicas como la paginación y la segmentación.

6. **¿Puedo planificar el uso de la CPU si no cuento con memoria secundaria?**
   - Sí, se puede planificar el uso de la CPU incluso si no se cuenta con memoria secundaria, pero esto puede limitar la capacidad del sistema para manejar grandes volúmenes de datos o ejecutar programas grandes.

7. **La interrupción por clock impide que un proceso se apropie del procesador.**
   - Falso. La interrupción por clock se utiliza para prevenir que un proceso monopolice la CPU, asegurando un tiempo de ejecución justo para otros procesos en un sistema multitarea.

8. **Las interrupciones son externas a los procesos.**
   - Verdadero. Las interrupciones son señales generadas por hardware o software externo a los procesos en ejecución, para indicar al procesador que debe detener su tarea actual y ejecutar una rutina de servicio de interrupción.

9. **Un intento de acceder a una dirección ilegal, se trata como un trap.**
   - Verdadero. Un intento de acceso a una dirección ilegal de memoria puede generar una trampa (trap), que es un tipo especial de interrupción utilizada para manejar errores y condiciones excepcionales.

10. **Un proceso puede acceder al espacio de direcciones de otro proceso si esta en modo usuario.**
    - Falso. En general, un proceso en modo usuario no puede acceder directamente al espacio de direcciones de otro proceso debido a las restricciones de seguridad y aislamiento implementadas por el sistema operativo.

11. **Una llamada al sistema (system call) genera la creación de un proceso del sistema operativo para atender la llamada.**
    - Falso. Una llamada al sistema es un mecanismo que permite a un programa en espacio de usuario solicitar un servicio del sistema operativo, sin necesidad de crear un nuevo proceso para atender la llamada. 

12. **Las llamadas al sistema son la forma que tienen las aplicaciones de comunicarse con el sistema operativo.**
    - Verdadero. Las llamadas al sistema proporcionan una interfaz entre el programa en ejecución y los servicios proporcionados por el sistema operativo.

13. **Si tengo muchos procesos orientados a entrada/salida, las colas de solicitudes a los dispositivos de E/S estarán vacías.**
    - Falso. Si hay muchos procesos orientados a entrada/salida, es probable que las colas de solicitudes a los dispositivos de E/S estén llenas o con actividad frecuente.

14. **¿El sistema operativo permite al usuario abstraerse del hardware y su manejo.**
    - Verdadero. El sistema operativo proporciona una capa de abstracción que facilita la interacción del usuario y las aplicaciones con el hardware, sin necesidad de conocer los detalles específicos de su funcionamiento.

15. **¿Es lo mismo el kernel que el sistema operativo?**
    - Falso. El kernel es la parte central del sistema operativo, responsable de gestionar los recursos del hardware, pero el sistema operativo puede incluir otros componentes, como utilidades y servicios.

16. **La memoria principal es un recurso del tipo multiplexada en el espacio.**
    - Verdadero. La memoria principal se divide en bloques o segmentos para ser asignada a diferentes procesos, lo que se conoce como multiplexación en el espacio.

17. **El procesador en un sistema monoprocesador es un recurso del tipo multiplexado en el tiempo a cada proceso.**
    - Verdadero. En un sistema monoprocesador, el CPU se asigna a los procesos de forma secuencial, compartiendo su tiempo entre ellos.

18. **¿Date se implementa con una system call?**
    - Falso. El comando "date" en sistemas Unix-like generalmente no requiere una llamada al sistema para ejecutarse, ya que puede obtener la hora y fecha actuales del sistema directamente.

19. **Un proceso tiene un stack en modo usuario y un stack en modo supervisor. Como no se usan a la vez, ocupan la misma dirección de memoria. (V o F)**
    - Falso. Aunque un proceso tiene stacks separados para el modo usuario y el modo supervisor, no ocupan la misma dirección de memoria.

20. **El estado del proceso está en la PCB. (V o F)**
    - Verdadero. La PCB (Process Control Block) almacena toda la información necesaria para mantener el estado de un proceso, incluyendo su estado actual (ejecutándose, listo, bloqueado, etc.).

21. **Un proceso crea a otro mediante un system call. (V o F)**
    - Verdadero. En sistemas Unix-like, la llamada al sistema `fork()` es utilizada para crear un nuevo proceso.

22. **La cola de procesos está en el disco. (V o F)**
    - Falso. La cola de procesos se mantiene en memoria principal.

23. **Cuando un proceso se crea, está en disco. (V o F)**
    - Verdadero. Antes de ser cargado en memoria para su ejecución, el programa correspondiente al proceso se encuentra almacenado en disco.

24. **El proceso padre crea al hijo en su propio espacio de direcciones. (V o F)**
    - Falso. Aunque el proceso hijo es creado a partir del proceso padre, tiene su propio espacio de direcciones.

25. **Las tablas de archivos correspondientes a los archivos abiertos que está usando un proceso, forman parte de su contexto. (V o F)**
    - Verdadero. La información sobre los archivos abiertos por un proceso es parte de su contexto y se mantiene en la PCB.

26. **La PCB se crea a partir que el proceso se carga en memoria. (V o F)**
    - Falso. La PCB se crea en el momento de la creación del proceso, antes de que sea cargado en memoria.

27. **Luego de la system call fork, el proceso padre y el proceso hijo comparten la PCB. (V o F)**
    - Falso. El proceso hijo tiene su propia PCB, aunque inicialmente es una copia de la PCB del proceso padre.

28. **Si no fuera por la E/S, los procesos no necesitarían system calls. (V o F)**
    - Falso. Las llamadas al sistema son necesarias para una variedad de funciones, no solo operaciones de E/S.

29. **En modo supervisor, es posible acceder al espacio de direcciones de cualquier proceso. (V o F)**
    - Verdadero. En modo supervisor (o modo kernel), el sistema operativo tiene acceso completo a todos los recursos del sistema, incluyendo el espacio de direcciones de todos los procesos.

30. **El contexto de un proceso es lo mismo que su espacio de direcciones. (V o F)**
    - Falso. El contexto de un proceso incluye su espacio de direcciones, pero también incluye otros datos necesarios para su ejecución, como los registros del CPU y la información de estado.

31. **Para implementar prioridad dinámica o aging por inanición, se tiene en cuenta:**
   - b) cuanto tiempo de espera tiene acumulado

32. **Un cambio de modo involucra un cambio de contexto. (V o F)**
   - Falso. Un cambio de modo (de usuario a kernel o viceversa) no implica necesariamente un cambio de contexto (cambio de proceso en ejecución).

33. **Un cambio de contexto involucra un cambio de modo. (V o F)**
   - Verdadero. Un cambio de contexto involucra guardar el estado del proceso actual y cargar el estado del nuevo proceso, lo cual implica cambiar el modo si los procesos están en modos diferentes.

34. **¿Es lo mismo cambio de contexto que cambio de proceso?**
   - Verdadero. Cambio de contexto implica cambiar de un proceso en ejecución a otro.

35. **¿Es lo mismo cambio de contexto que cambio de modo?**
   - Falso. Cambio de modo se refiere al cambio entre modo usuario y modo kernel, mientras que cambio de contexto se refiere al cambio de un proceso en ejecución a otro.

36. **Un fork exitoso produce cambios en la PCB del padre pues se almacena...**
   - Se almacena el PID del hijo.

37. **En el mecanismo de manejo de memoria con particiones, el espacio de direcciones de un proceso está delimitado por los registros... y...**
   - base y límite

38. **El fork devuelve dos valores:... al proceso hijo y... al proceso padre.**
   - 0 al proceso hijo y el PID del proceso hijo al proceso padre.

39. **Un acceso no autorizado a memoria es detectado por:**
   - b) El Hardware

40. **Las System Calls se ejecutan en “Modo Privilegiado”. (V o F)**
   - Falso. Las System Calls se realizan en modo usuario, pero generan una interrupción que causa que el sistema operativo tome el control en modo kernel para realizar la operación solicitada.

41. **Ante un cambio de contexto, indique cuáles de estos elementos se guarda en la PCB:**
   - a) tabla de páginas
   - c) tabla de archivos abiertos
   - d) estado del proceso

42. **El chequeo de la existencia de una interrupción se realiza entre los pasos de “Fetch” y “Execute” de cada ciclo de instrucciónISO/CSO. (V o F)**
   - Verdadero. Este es un momento típico para chequear interrupciones.

43. **El vector de interrupciones siempre debe estar en memoria. (V o F)**
   - Verdadero. Es necesario para que el sistema operativo pueda gestionar las interrupciones correctamente.

44. **Un system call fork, provocará cambio de contexto. (V o F)**
   - Verdadero. Un fork crea un nuevo proceso, lo que implica un cambio de contexto.

45. **Un proceso swappeado en estado listo (ready to run) no compite por CPU. (V o F)**
   - Verdadero. Si el proceso está swappeado (en memoria secundaria), no puede competir por CPU hasta que esté nuevamente en memoria principal.

46. **El scheduler de short term se ejecuta con menos frecuencia que el de long term. (V o F)**
   - Falso. El scheduler de short term se ejecuta con más frecuencia, ya que se encarga de la asignación de CPU a corto plazo.

47. **El cambio de contexto lo hace el scheduler de long term. (V o F)**
   - Falso. El cambio de contexto lo hace el scheduler de short term.

48. **Cuando a un proceso se le termina su quantum, pasa a estado de espera. (V o F)**
   - Falso. Generalmente, si a un proceso se le termina su quantum, vuelve a la cola de procesos listos para ejecutarse.

49. **El scheduler de medium term es quien decide el cambio entre nuevo y ready. (V o F)**
   - Falso. El cambio de nuevo a ready es responsabilidad del scheduler de long term.

50. **El scheduler de short term es quien hace pasar al proceso de estado ready a running. (V o F)**
   - Verdadero. El scheduler de short term es el que asigna la CPU a los procesos en estado ready.

51. **En la planificación de CPU se trata de maximizar la productividad, minimizar el tiempo de respuesta. (V o F)**
   - Verdadero. Maximizar la productividad y minimizar el tiempo de respuesta son objetivos clave de la planificación de CPU.

52. **El tiempo de retorno, es el tiempo desde que se inicia hasta que termina, sumando cpu, espera en colas. (V o F)**
   - Verdadero. El tiempo de retorno incluye todo el tiempo desde el inicio hasta la finalización del proceso.

53. **Supongamos que un proceso está en espera swappeado y se cumple el evento por el que estaba esperando. El proceso queda en estado de listo en memoria secundaria. (V o F)**
   - Verdadero. Si un proceso swappeado en espera cumple con el evento por el cual estaba esperando, pasa a estado de listo pero sigue en memoria secundaria hasta que sea traído a memoria principal.

54. **Según el diagrama visto: puede un proceso pasar del estado de nuevo (creado) a listo swappeado?**
   - NO. Generalmente, los procesos pasan de nuevo a listo en memoria principal.

55. **Un proceso puede pasar de esperar en memoria secundaria a esperar en memoria principal. (V o F)**
   - Falso. Los procesos generalmente esperan en memoria secundaria y se mueven a memoria principal cuando están listos para ejecutarse.

56. **El scheduler de medium term maneja el grado de multiprogramación. (V o F)**
   - Verdadero. El scheduler de medium term ajusta el grado de multiprogramación al decidir cuántos procesos deben estar en memoria.

57. **El disco permitió implementar la planificación de procesos. (V o F)**
   - Verdadero. El disco permitió la implementación de técnicas como el swapping, lo cual es fundamental para la planificación de procesos en sistemas con más procesos que pueden caber en la memoria principal.

58. **En un sistema monoprocesador, cuando se atiende una interrupción (se ejecuta una rutina de manejo de interrupciones) todos los procesos quedan en espera. (V o F)**
   - Verdadero. En un sistema monoprocesador, solo se puede ejecutar una cosa a la vez, así que cuando se atiende una interrupción, otros procesos deben esperar.

59. **En un ambiente con procesos interactivos y batch, que maneja colas multinivel. ¿Conviene usar algoritmos apropiativos? (V o F)**
   - Verdadero. Los algoritmos apropiativos pueden ayudar a asegurar que los procesos interactivos obtengan la CPU rápidamente, mejorando la respuesta del sistema.

60. **Indique cuál es la combinación que representa la sucesión de actividades que realiza el dispatcher:**
   - a) Cambio de contexto;
   - d) Carga en memoria del proceso elegido;
   - b) Cambio de Modo;
   - c) Salto a primer/próxima instrucción a ejecutar.

61. **Indique que puede ocurrir cuando solamente se tienen muchos procesos orientados a I/O:**
   - a) Se incrementa el uso de CPU;
   - b) Se saturan las colas de dispositivo; 
   - Respuesta: b) Se saturan las colas de dispositivo. Cuando hay muchos procesos orientados a I/O, tienden a saturarse las colas de dispositivos de entrada/salida más que el uso de la CPU.

62. **Cuando se carga un proceso en memoria, se hace en modo usuario. (V o F)**
   - Falso. La carga de procesos en memoria se realiza en modo supervisor para asegurar la protección y el correcto funcionamiento del sistema.

63. **La dirección que se carga en el PC (Program Counter) es una dirección física. (V o F)**
   - Falso. En sistemas que utilizan técnicas como la paginación, la dirección en el PC es una dirección lógica o virtual que luego será traducida a una dirección física.

64. **En las particiones dinámicas siempre es mejor la opción worst fit para la asignación de particiones. (V o F)**
   - Falso. La opción "worst fit" no siempre es la mejor para la asignación de particiones en particiones dinámicas. Depende de la situación y los requerimientos específicos del sistema.

65. **¿Quién resuelve una dirección en la que interviene el contenido del registro de reubicación y una dirección lógica?**
   - La Unidad de Gestión de Memoria (MMU, por sus siglas en inglés) se encarga de resolver direcciones lógicas o virtuales a direcciones físicas, utilizando para ello información como el contenido del registro de reubicación.

66. **¿Cuál es la ventaja de la paginación pura con respecto a cargar todo el proceso en memoria de forma contigua? Analizar ventajas y desventajas**
   - Ventajas de la paginación pura:
     - No hay fragmentación externa.
     - Mejor aprovechamiento del espacio de memoria.
     - Flexibilidad al no requerir que todo el proceso esté en memoria para ejecutarse.
   - Desventajas:
     - Puede haber fragmentación interna.
     - Complejidad en la gestión de la memoria.
     - Necesidad de hardware adicional para la traducción de direcciones.

67. **En paginación los procesos utilizan direcciones lógicas que son necesarias traducir a direcciones físicas. (V o F)**
   - Verdadero. En sistemas de paginación, los procesos utilizan direcciones lógicas o virtuales que luego son traducidas a direcciones físicas por la MMU.

68. **¿Qué información es necesario guardar en la entrada de la tabla de páginas en la paginación pura?**
   - En la paginación pura, cada entrada de la tabla de páginas típicamente contiene:
     - El número de marco de página (la ubicación en la memoria física donde está la página).
     - Información de control, como bits de validez, modificación (para saber si la página ha sido modificada), acceso (para saber si la página ha sido leída o escrita), etc.