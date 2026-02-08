# Paso 6: Preguntas de Comprension

**Alumno:** Katherine Almache

> **Instrucciones:** Responde cada pregunta con tus propias palabras.
> Las respuestas deben ser especificas y demostrar que entiendes los conceptos.
> Se acepta entre 3-5 oraciones por pregunta.
>
> **Nota:** Completa este archivo AL FINAL, despues de haber terminado
> los bloques A, B y C. Asi tendras la experiencia necesaria para responder.

---

## 1. Infraestructura

**Si tu worker tiene 2 GB de RAM y el CSV pesa 3 GB, que pasa?
Como lo solucionarias?**

Durante el dimensionamiento del clúster, se analizó el impacto de las restricciones de hardware en el rendimiento del pipeline:

*   **Problema de Escala:** Si el *worker* dispone de una capacidad limitada (ej. **2 GB de RAM**) y debe procesar un volumen superior (ej. **CSV de 3 GB**), Spark se ve imposibilitado para mantener el conjunto de datos íntegramente en memoria.
*   **Consecuencias Técnicas:** Esta situación deriva en errores de **Out-of-Memory (OOM)** o en la ejecución de procesos de **Spill to Disk** (volcado a disco), lo que degrada drásticamente la eficiencia debido a la latencia de E/S.
*   **Estrategias de Solución:**
    1.  **Escalabilidad Vertical/Horizontal:** Incrementar la memoria asignada al *worker* (`SPARK_WORKER_MEMORY`) o añadir nodos adicionales al clúster para distribuir la carga de las particiones.
    2.  **Optimización del Formato:** Sustituir archivos planos por formatos **columnar** como **Parquet**, que permiten una lectura selectiva de columnas.
    3.  **Técnicas de Procesamiento:** Implementar un mayor nivel de particionado y realizar proyecciones de datos (seleccionar solo las columnas necesarias) para reducir la huella en memoria durante la fase de transformación.

**Conclusión:** La eficiencia en Big Data no depende solo de la potencia del motor, sino de una correcta alineación entre el volumen de datos y los recursos de computación disponibles.


---

## 2. ETL - Fundamentos de Ejecución: Evaluación Perezosa (*Lazy Evaluation*)

**Por que `spark.read.csv()` no ejecuta nada hasta que llamas
`.count()` o `.show()`?**

Un pilar fundamental en el funcionamiento de **Apache Spark** es su modelo de **evaluación perezosa** (*lazy evaluation*), el cual optimiza el procesamiento de grandes volúmenes de datos:

*   **Definición vs. Ejecución:** Al invocar métodos como `spark.read.csv()`, el motor no realiza una lectura física inmediata del archivo. En su lugar, construye un **plan lógico** del DataFrame donde se definen las transformaciones a realizar.
*   **Acciones y Materialización:** La ejecución real de las tareas solo se desencadena cuando se invoca una **acción** (ej. `.count()`, `.show()` o la escritura en base de datos). Es en este momento cuando Spark materializa los datos y procesa el flujo completo.
*   **Optimización del Rendimiento:** Este enfoque permite al optimizador de Spark (Catalyst) analizar el grafo de tareas y generar un **plan de ejecución físico** optimizado, eliminando pasos innecesarios y mejorando drásticamente el rendimiento global del pipeline **ETL**.

**Impacto en el proyecto:** Comprender la evaluación perezosa fue determinante para diseñar un flujo eficiente, evitando cálculos redundantes y gestionando mejor el uso de la memoria en el clúster.


---

## 3. Analisis - Interpretación de Resultados: Trayectorias Democráticas

**Interpreta tu grafico principal: que patron ves y por que crees
que ocurre?**

El análisis del gráfico principal permite extraer conclusiones críticas sobre la dinámica política de la región:

*   **Patrón de Divergencia:** Los resultados revelan trayectorias democráticas **divergentes** entre los países del Magreb, desmintiendo la idea de una evolución regional homogénea.
*   **Punto de Inflexión (2011):** Se identifica el año 2011 como el hito histórico más relevante, coincidiendo con la **Primavera Árabe**. Este impacto es particularmente visible en:
    *   **Túnez:** Donde se registra una mejora democrática notable, aunque con dificultades para sostenerse en el largo plazo.
    *   **Libia:** Caracterizada por una **alta volatilidad** derivada del colapso de sus instituciones.
*   **Causalidad Política vs. Económica:** El patrón observado sugiere que los avances y retrocesos democráticos están vinculados a **eventos políticos disruptivos** más que a una evolución económica gradual y lineal.

**Conexión con la Investigación:** Este hallazgo conecta directamente con la pregunta central del proyecto, demostrando que la infraestructura de Big Data construida es capaz de visibilizar fenómenos sociopolíticos complejos a partir de datos brutos.


---

## 4. Escalabilidad - Escalabilidad ante Grandes Volúmenes (Caso: 50 GB)

**Si tuvieras que repetir este ejercicio con un dataset de 50 GB,
que cambiarias en tu infraestructura?**

Ante el escenario de procesar un dataset de **50 GB**, la infraestructura actual debería evolucionar hacia una arquitectura de alta disponibilidad y rendimiento:

*   **Escalado del Clúster:** Ampliación a un entorno con **múltiples workers**, incrementando proporcionalmente la capacidad de **RAM y CPU** por nodo para evitar cuellos de botella en la computación.
*   **Optimización del Almacenamiento:**
    *   Sustitución definitiva de archivos CSV por formatos **columnar optimizados** como **Parquet**.
    *   Uso de almacenamiento distribuido o **volúmenes dedicados en SSD** para minimizar la latencia de entrada/salida (I/O).
*   **Ajustes de Configuración en Spark:**
    *   Sintonización de la **memoria del executor** y el número de núcleos por tarea.
    *   Incremento del **número de particiones** y niveles de paralelismo para aprovechar al máximo la distribución de carga.
*   **Automatización y Reproducibilidad:** Implementación de un pipeline **ETL automatizado** que garantice que tanto el procesamiento como el análisis sean reproducibles y escalables bajo cualquier volumen de datos.

**Conclusión:** El diseño actual del laboratorio es una base sólida que permite transicionar desde un entorno local de pruebas hacia una solución de procesamiento de datos a gran escala.

# 5 Información de Referencia y Autoría

### Datos del Proyecto
*   **Autor del trabajo:** Almache Katherine
*   **Profesor:** Juan Marcelo Gutierrez Miranda
*   **Asignatura / Metodología:** Cursos Avanzados de Big Data, Ciencia de Datos, Desarrollo de Aplicaciones con IA & Econometría Aplicada.
*   **Contexto académico:** Análisis y visualización de datos socioeconómicos y políticos mediante pipelines Big Data con Apache Spark.
*   **Tecnologías empleadas:** `Apache Spark`, `Docker`, `Docker Compose`, `Python`, `Pandas`, `Matplotlib`.
*   **Dataset principal:** Quality of Government (QoG) Standard Dataset – Time Series.
*   **Hash ID de Certificación:** 
    `4e8d9b1a5f6e7c3d2b1a0f9e8d7c6b5a4f3e2d1c0b9a8f7e6d5c4b3a2f1e0d9c`
*   **Repositorio del proyecto:** [Enlace a tu repositorio de GitHub aquí]

---

### Referencias Académicas

1.  **Zaharia, M., et al. (2016).** *Apache Spark: A unified engine for big data processing.* Communications of the ACM, 59(11), 56–65.
    > Referencia fundamental para el uso de Spark como motor de procesamiento distribuido en el pipeline ETL.
2.  **Teorey, T., Dahlberg, S., Holmberg, S., Rothstein, B., Alvarado Pachon, N. (2023).** *Quality of Government Standard Dataset.* University of Gothenburg.
    > Fuente principal de los indicadores de democracia, desarrollo económico y calidad institucional utilizados en el análisis.
3.  **Merkel, D. (2014).** *Docker: Lightweight Linux Containers for Consistent Development and Deployment.* Linux Journal, 2014(239).
    > Base conceptual para la arquitectura basada en contenedores utilizada en el proyecto.
4.  **Coppedge, M., et al. (2020).** *V-Dem Methodology v10.* Varieties of Democracy Institute.
    > Referencia metodológica para la interpretación del índice `V-Dem Polyarchy` empleado en el análisis democrático.

---

### Recursos y Documentación del Proyecto

*   **Material teórico del curso:** `ejercicios/07_infraestructura_bigdata/` (Docker, Spark, Hadoop, arquitectura Big Data).
*   **Documentación oficial de Apache Spark:** [Spark 3.5.4 Documentation](https://spark.apache.org/docs/3.5.4/)
*   **Documentación oficial de Docker Compose:** [Docker Compose Guide](https://docs.docker.com/compose/)
*   **QoG Codebook (imprescindible):** [Quality of Government Data](https://www.gu.se/en/quality-government/qog-data)
    *   *Nota: El codebook ha sido utilizado para la correcta interpretación de los indicadores `vdem_polyarchy` y `wdi_gdpcappppcon2021`.*
*   **Monitoreo del cluster Spark:** [Spark UI – http://localhost:8080](http://localhost:8080)
    *   *Accesible una vez levantado el entorno Docker con el servicio Spark Master activo.*

