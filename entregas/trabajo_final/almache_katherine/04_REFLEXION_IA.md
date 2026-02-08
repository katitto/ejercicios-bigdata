# Paso 5: Reflexion IA - Proceso de Aprendizaje

**Alumno:** Katherine Almache 

> **Instrucciones:** Para cada bloque (A, B, C), responde 3 preguntas y pega
> el prompt MAS IMPORTANTE que usaste en ese bloque.
>
> Se valoran respuestas **ESPECIFICAS** y **HONESTAS**. No importa si usaste
> IA o no. Lo que importa es que demuestres tu proceso de aprendizaje real.
>
> **Lo que evaluamos:** Tus prompts y tu capacidad de explicar que hiciste.
> Un codigo perfecto con reflexion vacia = nota baja.

---

## Bloque A: Infraestructura Docker

### Momento 1 - Arranque
**Que fue lo primero que le pediste a la IA o buscaste en internet?**

### 1. Definición de la Infraestructura Base

Lo primero que le pedí a **ChatGPT** fue cómo montar un entorno **Big Data** en local usando `Docker Compose` con **Apache Spark** y **PostgreSQL**, porque no tenía claro cómo se conectaban el *master* y el *worker* ni qué puertos necesitaban. 

En concreto, mi solicitud se centró en:
- Definir un archivo `docker-compose.yml` que integrara un **Spark Master**, un **Spark Worker** y una base de datos **PostgreSQL**.
- Configurar una red común para que todos los servicios compartieran la misma infraestructura de red interna.
- Identificar los puertos críticos (como el `8080` para la UI de Spark o el `5432` para Postgres) para la correcta comunicación de los datos.

### Momento 2 - Error
**Que fallo y como lo resolviste? (pega el error si lo tienes)**

Durante la fase de despliegue, se identificaron y resolvieron los siguientes incidentes técnicos:

- **Conflicto de Nombres de Contenedor:**  
  Al ejecutar `docker compose up -d` apareció el siguiente error:  
  `Error response from daemon: Conflict. The container name "/spark-master" is already in use`  
  *   **Causa:** Existencia de un contenedor residual de una ejecución previa con el mismo nombre.  
  *   **Solución:** Se procedió a la eliminación del contenedor antiguo mediante el comando `docker rm -f spark-master`. Se concluyó que Docker exige **nombres únicos** para todos los recursos activos en el motor.

- **Error de Conectividad en el Cluster (Networking):**  
  El **Spark Worker** no lograba establecer conexión con el **Master**, impidiendo la computación distribuida.  
  *   **Causa:** Los servicios no estaban correctamente definidos dentro de la misma red virtual de Docker.  
  *   **Solución:** Se redefinió el archivo `docker-compose.yml` añadiendo una red compartida explícita. Esto permitió que el Worker localizara al Master mediante el nombre de servicio a través del DNS interno de Docker.
Usa el código con precaución.

### Momento 3 - Aprendizaje
**Que aprendiste que NO sabias antes de empezar este bloque?**

El proceso de configuración de la infraestructura permitió extraer conclusiones fundamentales sobre la orquestación de sistemas distribuidos:

*   **Orquestación vs. Ejecución:** Comprendí que **Docker Compose** no se limita a la ejecución de contenedores, sino que actúa como una capa de definición de comunicaciones. No basta con iniciar los servicios; es imperativo configurar la arquitectura de red para permitir la resolución de nombres por DNS interno (ej. `spark-master`, `postgres`).
*   **Gestión de Dependencias:** Identifiqué que la instrucción `depends_on` tiene limitaciones: garantiza el orden de arranque, pero no la **disponibilidad real** del servicio. Esto justifica la implementación de *healthchecks* para asegurar que la base de datos esté lista antes de que Spark intente conectar.
*   **Optimización del Almacenamiento:** Aprendí la importancia del mapeo de **volúmenes** para la persistencia de datos. El uso de un **SSD externo** mediante un *Directory Junction* resultó ser una solución clave para evitar la saturación de la unidad del sistema (`C:`), permitiendo trabajar con grandes volúmenes de datos de forma eficiente en hardware limitado.


### Prompt clave del Bloque A

**Herramienta:** [ChatGPT]

**El prompt que mas te ayudo en este bloque:**
```
Necesito un docker-compose.yml para montar un mini laboratorio Big Data en local con:
- Apache Spark con 1 master y 1 worker
- PostgreSQL como base de datos
Explícame qué hace cada servicio, qué puertos usa Spark (7077, 8080) y cómo se conectan entre sí dentro de la red Docker.

```

**Por que fue clave:**

Este prompt fue clave porque no solo me dio el archivo base, sino que me ayudó a entender cómo funcionaba la comunicación 
entre contenedores y por qué **Spark** necesita ciertos puertos abiertos.

---

## Bloque B: Pipeline ETL

### Momento 1 - Arranque - Integración de Datos: Spark a PostgreSQL

Lo primero que busqué fue cómo leer datos desde un archivo **CSV** con **Spark** y cargarlos en una base de datos **PostgreSQL** utilizando **PySpark**. 

En esta fase, surgieron dudas fundamentales sobre el flujo de trabajo:
- No tenía claro si **Spark** “guardaba datos” de forma permanente o si únicamente actuaba como motor de procesamiento en memoria.
- Desconocía el procedimiento técnico para escribir los resultados de las transformaciones en una base de datos relacional.

**Aprendizaje clave:** Comprendí que Spark es un motor de computación efímero y que la persistencia se logra mediante conectores [JDBC](https://spark.apache.org), permitiendo que los resultados del procesamiento se vuelquen de forma estructurada en **Postgres**.


### Momento 2 - Error - Depuración del Conector JDBC

Al intentar escribir el DataFrame en **PostgreSQL**, Spark lanzaba un error de conexión **JDBC** indicando que no encontraba el *driver*. 

*   **Identificación del problema:** 
    El contenedor de Spark, por defecto, no incluye el controlador (driver) necesario para comunicarse con bases de datos PostgreSQL.
    
*   **Resolución técnica:** 
    1. Se solucionó añadiendo el paquete correspondiente (`org.postgresql:postgresql`) en la configuración de la sesión de Spark o mediante el parámetro `--packages` al ejecutar el script.
    2. Se realizó una verificación exhaustiva de la **URL JDBC**, asegurando que el *host* coincidiera con el nombre del servicio definido en el `docker-compose.yml` (`jdbc:postgresql://postgres:5432/proyecto`).
    3. Se validaron las credenciales (usuario y contraseña) para garantizar la autenticación exitosa en el servicio.

**Resultado:** Tras la inclusión del driver, Spark logró establecer la conexión de escritura, permitiendo la persistencia de los datos procesados en la base de datos relacional.


[Tu respuesta]

### Momento 3 - Aprendizaje - Aprendizajes sobre Procesamiento y Flujos ETL
**Que aprendiste que NO sabias antes de empezar este bloque?**

El desarrollo del pipeline de datos permitió consolidar conceptos fundamentales de la ingeniería de datos:

*   **Naturaleza de Apache Spark:** Aprendí que Spark **no es una base de datos**, sino un motor de procesamiento distribuido. Los datos residen en memoria de forma efímera durante el cálculo; si no se realiza una acción de escritura explícita en un almacenamiento externo (como **PostgreSQL**, archivos **Parquet** o **HDFS**), los resultados se pierden al finalizar la sesión.
*   **Implementación del Ciclo ETL:** El proyecto sirvió como caso práctico para entender el concepto de **ETL** (*Extract, Transform, Load*):
    *   **Extracción:** Lectura y carga de datos crudos desde archivos **CSV**.
    *   **Transformación:** Limpieza de registros, normalización de esquemas y ajuste de tipos de datos para asegurar la calidad de la información.
    *   **Carga:** Persistencia de los datos transformados en **PostgreSQL** para su posterior consumo o visualización.

**Conclusión:** Esta distinción entre procesamiento (Spark) y almacenamiento (Postgres) es vital para diseñar arquitecturas de Big Data eficientes y escalables.


### Prompt clave del Bloque B

**Herramienta:** [ChatGPT]

**El prompt que mas te ayudo en este bloque:**
```
Tengo un DataFrame en PySpark y quiero guardarlo en PostgreSQL desde un contenedor Docker.
Explícame cómo funciona la conexión JDBC, qué driver necesito y dame un ejemplo real de write.format("jdbc").

```

**Por que fue clave:** 
> **Reflexión sobre el aprendizaje:** Este prompt fue clave porque conectó la teoría del **ETL** con un caso real y me permitió entender por qué fallaba la conexión y cómo solucionarlo técnicamente mediante el uso de conectores.
---

## Bloque C: Analisis y Visualizacion

### Momento 1 - Arranque - Análisis Exploratorio de Datos (EDA) y Visualización
**Que fue lo primero que le pediste a la IA o buscaste en internet?**

Una vez consolidada la persistencia en la base de datos, el siguiente paso fue definir la estrategia de explotación de la información:

- Le pedí a la IA orientación sobre cómo realizar un **Análisis Exploratorio de Datos (EDA)** con los registros ya cargados en el sistema.
- Consulté qué **variables** debían priorizarse para el análisis inicial (identificando indicadores clave de democracia y economía).
- Busqué la mejor metodología para **representar los resultados** en gráficos claros que aportaran valor y coherencia al objetivo del proyecto.

**Impacto en el proyecto:** Esta fase permitió transformar datos brutos en **información accionable**, facilitando la detección de tendencias y anomalías en las trayectorias de los países analizados.


### Momento 2 - Error
**Que fallo y como lo resolviste?**
### 8. Depuración de la Calidad del Dato y Tipado

Durante la fase de visualización, se identificaron inconsistencias que afectaban la validez de las representaciones gráficas:

*   **Identificación del problema:** 
    Los gráficos iniciales carecían de sentido debido a una limpieza insuficiente de **valores nulos** y errores en el **tipado de datos**. Específicamente, varios campos numéricos críticos estaban siendo procesados como cadenas de texto (`strings`), lo que impedía realizar operaciones matemáticas y agregaciones correctas.
    
*   **Resolución técnica:** 
    1. Se realizó una revisión exhaustiva del **esquema del DataFrame** (`df.printSchema()`).
    2. Se aplicaron filtros de limpieza previa para gestionar los registros faltantes.
    3. Se procedió al **cast de columnas** para asegurar que las agregaciones se ejecutaran exclusivamente sobre variables numéricas correctamente tipadas.

**Lección aprendida:** La calidad de la visualización depende directamente de la integridad del dato. Un esquema de datos bien definido es el requisito previo indispensable para cualquier análisis estadístico fiable.
### Momento 3 - Aprendizaje - Reflexiones sobre la Visualización de Datos
**Que aprendiste que NO sabias antes de empezar este bloque?**

El proceso de generación de resultados permitió evolucionar la perspectiva técnica hacia una visión más analítica y estratégica:

*   **Propósito de la Visualización:** Aprendí que realizar gráficos no consiste simplemente en “pintar datos” de forma estética, sino en comprender con exactitud qué **pregunta de investigación** responde cada representación visual.
*   **Justificación Metodológica:** Desarrollé la capacidad de justificar la elección de cada tipo de gráfico (líneas, barras, etc.) en función de la naturaleza de los datos, asegurando que la herramienta visual fuera la más adecuada para transmitir el mensaje.
*   **Contextualización de Resultados:** Comprendí la importancia de relacionar los hallazgos cuantitativos con el **contexto sociopolítico** del proyecto. Un dato aislado carece de valor si no se integra en una narrativa que explique la realidad de los países analizados.

**Conclusión:** La visualización efectiva actúa como el puente entre el procesamiento de Big Data y la toma de decisiones informada, transformando la complejidad técnica en conocimiento comprensible.


### Prompt clave del Bloque C

**Herramienta:** [ChatGPT]

**El prompt que mas te ayudo en este bloque:**
```
Tengo datos procesados con Spark y cargados en PostgreSQL.
Ayúdame a plantear un análisis exploratorio (EDA) y sugiéreme gráficos que tengan sentido para interpretar los resultados, explicando qué muestra cada uno.

```

**Por que fue clave:** 
> **Reflexión Estratégica:** Este prompt fue clave porque me ayudó a realizar la transición de un estado puramente técnico (**"tengo datos"**) a un enfoque analítico y narrativo (**"sé qué historia cuentan los datos"**).

# Información de Referencia y Autoría

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


