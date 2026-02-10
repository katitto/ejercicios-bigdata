# Trabajo Final: ¿Cómo ha evolucionado el nivel de democracia y desarrollo económico en los países del Magreb entre 1990 y 2022?
   

**Alumno:** Katherine Almache
**Fecha:** 08/02/2026   

---

## Orden de trabajo

Completa los archivos en este orden. Cada numero indica la secuencia:

| Orden | Archivo | Que haces |
|-------|---------|-----------|
| **1** | `01_README.md` (este archivo) | Defines tu pregunta, paises y variables |
| **2** | `02_INFRAESTRUCTURA.md` | Construyes y explicas tu docker-compose.yml |
| **3** | `pipeline.py` | Escribes tu ETL + analisis con Spark |
| **4** | `03_RESULTADOS.md` | Presentas graficos e interpretas resultados |
| **5** | `04_REFLEXION_IA.md` | Documentas tu proceso y pegas tus prompts |
| **6** | `05_RESPUESTAS.md` | Respondes 4 preguntas de comprension |

Los archivos `docker-compose.yml`, `requirements.txt` y `.gitignore` los
completas conforme avanzas.

---

## Pregunta de investigacion

¿Cómo ha evolucionado el nivel de democracia y el desarrollo económico en los países del Magreb entre 1990 y 2022, y existe una relación directa entre ambos procesos?

---

## Paises seleccionados (5)

### Selección de Países para el Estudio (Región del Magreb)

Para el análisis comparativo, se han seleccionado cinco países que representan la diversidad política y económica de la región. A continuación se justifica la elección de cada uno:

| # | País | Código ISO | Justificación de la Selección |
| :-- | :--- | :--- | :--- |
| 1 | **Marruecos** | `MAR` | Representa un caso de monarquía estable con reformas políticas graduales sin una transición democrática plena. |
| 2 | **Argelia** | `DZA` | Ejemplo de régimen autoritario con estabilidad política relativa y fuerte dependencia de recursos energéticos. |
| 3 | **Túnez** | `TUN` | Caso clave por su transición democrática tras la Primavera Árabe en 2011, aunque con retrocesos posteriores. |
| 4 | **Libia** | `LBY` | País marcado por el colapso institucional tras 2011 y una elevada volatilidad política y económica. |
| 5 | **Mauritania** | `MRT` | Caso periférico del Magreb con procesos políticos inestables y ausencia de consolidación democrática clara. |


**IMPORTANTE:** No puedes usar los paises del ejemplo del profesor (KAZ, UZB, TKM, KGZ, TJK).

---

## Variables seleccionadas (5 numericas)

| # | Variable QoG           | Que mide                                                 | Por que la elegiste                                                                            |
| - | ---------------------- | -------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| 1 | `vdem_polyarchy`       | Nivel de democracia electoral (V-Dem)                    | Es el indicador principal para medir la calidad democrática y comparar trayectorias políticas. |
| 2 | `wdi_gdpcappppcon2021` | PIB per cápita ajustado por paridad de poder adquisitivo | Permite evaluar el nivel de desarrollo económico real entre países y a lo largo del tiempo.    |
| 3 | `vdem_libdem`          | Nivel de democracia liberal                              | Complementa la poliarquía capturando aspectos institucionales más profundos.                   |
| 4 | `wdi_unemp`            | Tasa de desempleo                                        | Indicador socioeconómico clave para analizar estabilidad y bienestar social.                   |
| 5 | `wdi_inflation`        | Tasa de inflación anual                                  | Refleja la estabilidad macroeconómica y el impacto económico en la población.                  |


**Tip:** Consulta el codebook de QoG para entender que mide cada variable:
https://www.gu.se/en/quality-government/qog-data

---

## Variable derivada
Creé una variable derivada de estabilidad democrática calculando la media móvil del 
índice vdem_polyarchy por país, con el objetivo de suavizar la volatilidad anual y analizar tendencias democráticas de largo plazo.

---

## Tipo de analisis elegido

- [ ] Clustering (K-Means)
- [X] Serie temporal (evolucion por pais)
- [X] Comparacion (antes/despues de un evento)

---

## Como ejecutar mi pipeline

```bash
# Paso 1: Levantar infraestructura
docker compose up -d

# Paso 2: Verificar que todo funciona
docker ps

# Paso 3: Ejecutar pipeline
python pipeline.py
```
 - El pipeline asume que el dataset QoG se encuentra en la carpeta data/.

 - Los resultados del procesamiento y los gráficos se generan automáticamente en la carpeta resultados/.

 - El monitoreo del clúster Spark puede realizarse desde http://localhost:8080.
