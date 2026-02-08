# Registro de Prompts - Trabajo Final

**Alumno:** Katherine Almache
**Fecha:** [10/02/2026]
**IA utilizada:** [ChatGPT]

---

## COMO USAR ESTE ARCHIVO

Este archivo tiene **DOS PARTES** muy diferentes:

| Parte | Que es | Como debe verse |
|-------|--------|-----------------|
| **PARTE 1** | Tus 3 prompts reales | Lenguaje NATURAL, con errores, informal |
| **PARTE 2** | Blueprint generado por IA | Perfecto, profesional, estructurado |

### REGLA IMPORTANTE

> **Los prompts de la Parte 1 deben ser COPIA EXACTA de lo que escribiste.**
>
> NO los pases por la IA para "mejorarlos". NO corrijas errores.
> Si escribiste "como ago para que sparck lea el csv" con errores,
> eso es lo que debes pegar.
>
> **El sistema detecta automaticamente si los prompts fueron "limpiados".**
> Prompts perfectos en la Parte 1 = SOSPECHOSO.

---

# PARTE 1: Mis Prompts Reales (3 minimo)

> Copia y pega EXACTAMENTE lo que le escribiste a la IA.

---

## Prompt A: Infraestructura Docker

**Contexto:**

Al inicio del proyecto, el principal desafío fue comprender la arquitectura de [Docker](https://www.docker.com) para articular el entorno de **Big Data**. Existían dudas sobre la jerarquía y función de los componentes principales:

*   **Imágenes:** Entendidas finalmente como las "plantillas" o planos estáticos que contienen el sistema operativo y las aplicaciones (Spark, Postgres) listas para ser instaladas.
*   **Contenedores:** Las instancias vivas y en ejecución de esas imágenes. Aprendí que un contenedor es donde realmente ocurre el procesamiento de datos.
*   **Dockerfile vs. Docker Compose:** Comprendí que mientras el `Dockerfile` define cómo se construye una imagen personalizada, el `docker-compose.yml` funciona como el director de orquesta que permite que múltiples contenedores (Master, Worker y DB) convivan y se comuniquen en una misma infraestructura.

**Impacto en el flujo de trabajo:** Aclarar estas diferencias permitió pasar de una instalación manual propensa a errores a un despliegue automatizado, escalable y fácilmente replicable en cualquier máquina.


**Mi prompt exacto (copiado tal cual):**
```
quiero montar la infraestructura con docker pero no lo entiendo bien
una imagen es como un programa?
si yo bajo una imagen de spark ya viene todo hecho?
no entiendo de donde sale el dockerfile ni el docker compose
me lo puedes explicar facil porfavor

```

**Que paso:** [ ] Funciono  [ ] Funciono parcial  [ ] No funciono

**Que aprendi:**

El proceso de despliegue me permitió consolidar una base técnica sólida sobre la arquitectura de contenedores:

*   **Diferenciación de Conceptos:** Logré distinguir claramente entre la **Imagen** (el artefacto estático y empaquetado), el **Contenedor** (la instancia activa del servicio en memoria) y el **Dockerfile** (el script de construcción de la imagen).
*   **Capacidad de Orquestación:** Comprendí que **Docker Compose** es la herramienta clave para la orquestación, permitiendo gestionar el ciclo de vida de múltiples servicios de forma simultánea y coordinada, en lugar de administrar contenedores de manera aislada.

**Conclusión:** Este aprendizaje fue el motor que permitió pasar de una configuración manual a un entorno de Big Data profesional, automatizado y reproducible.


---

## Prompt B: Pipeline ETL / Spark

**Contexto:**

Uno de los momentos clave del desarrollo fue la primera interacción con la carga de datos masivos. Al intentar leer un archivo **CSV** de gran volumen, surgió una duda metodológica sobre el comportamiento del motor:

*   **Inactividad Aparente:** Observé que, tras ejecutar las líneas de código destinadas a la lectura del archivo, el sistema no mostraba actividad de procesamiento ni carga de recursos inmediata.
*   **Comportamiento de Spark:** Entendí que este fenómeno no era un error de ejecución, sino la naturaleza misma de Spark. El código "no hacía nada" porque el motor estaba simplemente registrando el esquema y la ruta, sin mover los datos físicamente.
*   **Activación por Acciones:** Comprendí que el procesamiento solo se activa de forma efectiva al invocar funciones específicas (acciones) como `.show()`, `.count()` o el volcado a la base de datos.

**Aprendizaje:** Esta experiencia fue la base para comprender la eficiencia de Spark, donde la preparación del plan de trabajo es tan importante como la ejecución misma.


**Mi prompt exacto (copiado tal cual):**
```
porque cuando hago spark.read.csv no pasa nada?
yo leo el csv pero no veo ningun resultado
hasta que pongo show o count
esto es un error o algo de spark?

```

**Que paso:** [ ] Funciono  [ ] Funciono parcial  [ ] No funciono

**Que aprendi:** 
### 17. Dominio de la Evaluación Perezosa (Lazy Evaluation)

El desarrollo del pipeline de datos permitió interiorizar uno de los conceptos más avanzados de **Apache Spark**:

*   **Modelo de Ejecución:** Aprendí que Spark implementa un modelo de **Lazy Evaluation** (evaluación perezosa). Bajo este paradigma, el sistema no procesa los datos en el momento exacto en que se define una instrucción de lectura o filtrado.
*   **Transformaciones vs. Acciones:** Comprendí la distinción crítica entre:
    *   **Transformaciones:** Operaciones que definen un nuevo conjunto de datos a partir de uno existente (como `filter`, `select` o `join`), pero que solo se registran en un grafo de ejecución (DAG).
    *   **Acciones:** Instrucciones que obligan a Spark a ejecutar todas las transformaciones acumuladas para devolver un resultado o guardar datos (como `.count()`, `.collect()` o `.write()`).

**Impacto:** Este conocimiento me permitió optimizar el código, evitando ejecuciones innecesarias y comprendiendo por qué el rendimiento del clúster se activa solo en puntos específicos del script.

---

## Prompt C: Analisis / Graficos

**Contexto:**

En la fase final del análisis, se identificó la necesidad de transformar los datos procesados en conocimiento visual mediante la generación de **gráficos de evolución temporal**. El objetivo principal fue monitorizar dos dimensiones críticas:

*   **Índice de Democracia:** Utilizando la variable `vdem_polyarchy` para observar la calidad institucional a lo largo de los años.
*   **Desarrollo Económico:** Analizando el **PIB per cápita** para identificar periodos de crecimiento, estancamiento o crisis.

**Metodología:** 
Para lograrlo, se emplearon las librerías `Pandas` para la manipulación de series temporales y `Matplotlib` / `Seaborn` para la representación gráfica. Este proceso permitió contrastar visualmente si los picos de riqueza económica guardaban una relación directa con las aperturas democráticas en los países del Magreb.

**Mi prompt exacto (copiado tal cual):**
```
Genera un gráfico de líneas en Python con matplotlib que muestre la evolución temporal
del índice vdem_polyarchy para varios países, usando un DataFrame de pandas
con columnas country, year y vdem_polyarchy.

```

**Que paso:** [ ] Funciono  [ ] Funciono parcial  [ ] No funciono

**Que aprendi:**

Uno de los aprendizajes más valiosos fue entender que el código generado inicialmente por una IA actúa como una base que requiere una **adaptación crítica** para ser funcional en un entorno real:

*   **Ajuste a Datos Reales:** Aprendí a modificar las estructuras de los scripts para que encajaran con los nombres de columnas, tipos de datos y particularidades específicas del dataset **QoG**.
*   **Optimización Visual:** No me limité a la visualización estándar; realicé ajustes en los parámetros de **Matplotlib** (etiquetas, leyendas, escalas y colores) para asegurar que los gráficos fueran verdaderamente informativos y profesionales.
*   **Pensamiento Crítico:** El proceso implicó validar que los resultados obtenidos tuvieran coherencia lógica y académica, corrigiendo errores de interpretación o de mapeo de variables que surgieron durante la implementación.

**Conclusión:** Esta fase de "curación de código" fue fundamental para transformar una propuesta técnica genérica en una solución personalizada y precisa para mi investigación.


---

# PARTE 2: Blueprint Replicable (generado por IA)

> **Instrucciones:** Cuando termines tu proyecto, pidele a tu IA:
>
> *"Genera un prompt profesional tipo blueprint que describa exactamente
> lo que logramos: stack, tecnologias, arquitectura, datos y pasos.
> Debe ser tan detallado que si se lo paso a otra IA o a un desarrollador
> senior, pueda replicar el proyecto completo sin ver mi codigo."*
>
> Pega la respuesta completa aqui abajo.

---

## Mi Blueprint

**Prompt que use para generar esto:**
```
Genera un prompt profesional tipo blueprint que describa exactamente
lo que logramos: stack, tecnologias, arquitectura, datos y pasos.
Debe ser tan detallado que si se lo paso a otra IA o a un desarrollador
senior, pueda replicar el proyecto completo sin ver mi codigo.

```

**Blueprint generado por la IA:**

```
─────────────────────────────────────────────────────────────────
PROYECTO: Pipeline Big Data – Democracia y Desarrollo Económico en el Magreb

INFRAESTRUCTURA:
- Docker Compose con 3 servicios:
  * PostgreSQL 16 (puerto 5432, volumen persistente)
  * Apache Spark Master 3.5.4 (puerto 8080)
  * Apache Spark Worker (2 GB RAM, 1 core)
- Red interna Docker para comunicación entre servicios
- Volúmenes montados para datos y resultados

DATOS:
- Dataset: Quality of Government (QoG) Standard Dataset – Time Series
- Países analizados:
  Marruecos, Argelia, Túnez, Libia, Mauritania
- Variables:
  vdem_polyarchy, wdi_gdpcappppcon2021
- Periodo temporal:
  1990 – 2022

PIPELINE ETL:
1. Lectura del CSV con Spark usando inferencia de esquema.
2. Filtrado por países del Magreb y rango temporal.
3. Selección de variables relevantes.
4. Conversión a formato optimizado (Parquet).
5. Exportación para análisis y visualización.

ANALISIS:
- Análisis comparativo de trayectorias democráticas.
- Análisis de evolución del PIB per cápita.
- Gráficos de líneas temporales por país.

TECNOLOGIAS:
- Apache Spark 3.5.4
- Docker & Docker Compose
- Python 3.11
- Pandas, Matplotlib, Seaborn
- PostgreSQL 16

COMANDO PARA EJECUTAR:
docker compose up -d
python pipeline.py
─────────────────────────────────────────────────────────────────

```

---

## Verificacion de Coherencia

Responde estas preguntas para verificar que tu blueprint coincide con tu codigo:

| Pregunta | Tu respuesta |
|----------|------|
| La version de Spark en el blueprint coincide con tu docker-compose.yml? | [Si] |
| Los paises del blueprint son los mismos que filtra tu pipeline.py? | [Si] |
| Las variables del blueprint estan en tu codigo? | [Si] |
| El tipo de analisis del blueprint coincide con tus graficos? | [Si] |

**Si alguna respuesta es "No", corrige el blueprint o el codigo.**

---

## Estadisticas Finales

| Metrica | Valor |
|---------|------|
| Total de interacciones con IA (aprox) | [35] |
| Prompts que funcionaron a la primera | [1]  |
| Errores que tuve que resolver | [6]  |
| Horas totales de trabajo | [20] |

---

## Declaracion

[X] Confirmo que los prompts de la PARTE 1 son reales y no fueron
    modificados ni pasados por IA para corregirlos.

[X] Confirmo que el blueprint de la PARTE 2 fue generado por IA
    basandose en mi proyecto real.

[X] Entiendo que inconsistencias entre el blueprint y mi codigo
    seran investigadas.

**Nombre:** Katherine Almache 
**Fecha:** [10/02/2026]
