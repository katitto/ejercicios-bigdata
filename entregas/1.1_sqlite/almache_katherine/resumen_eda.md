# Resumen de Análisis Exploratorio de Datos (EDA)

---

## 1. Tabla resumen de los CSVs

La siguiente tabla resume los archivos CSV utilizados como fuente de datos, indicando el número de registros y columnas de cada uno.

| CSV / Categoría              | Nº Registros | Nº Columnas |
|-----------------------------|--------------|-------------|
| case                        |              |             |
| case_accessory              |              |             |
| case_fan                    |              |             |
| cpu                         |              |             |
| cpu_cooler                  |              |             |
| external_hard_drive         |              |             |
| fan_controller              |              |             |
| headphones                  |              |             |
| internal_hard_drive         |              |             |
| keyboard                    |              |             |
| memory                      |              |             |
| monitor                     |              |             |
| motherboard                 |              |             |
| mouse                       |              |             |
| optical_drive               |              |             |
| os                          |              |             |
| power_supply                |              |             |
| sound_card                  |              |             |
| speakers                    |              |             |
| thermal_paste               |              |             |
| ups                         |              |             |
| video_card                  |              |             |
| webcam                      |              |             |
| wired_network_card          |              |             |
| wireless_network_card       |              |             |

*Los valores se completarán tras la carga y exploración de los CSVs.*

---

## 2. Estadísticas generales

A partir del conjunto completo de CSVs se obtuvieron las siguientes estadísticas generales:

- **Número total de archivos CSV:**  
- **Número total de productos:**  
- **Número medio de productos por categoría:**  
- **Precio mínimo registrado:**  
- **Precio máximo registrado:**  
- **Precio medio global:**  

Estas estadísticas permiten comprender la escala y diversidad del catálogo de productos analizado.

*Pendiente de completar con resultados reales.*

---

## 3. Fabricantes identificados

Durante el análisis se identificaron fabricantes a partir del nombre del producto.

### 3.1 Descripción

- El fabricante se extrae como la primera palabra del campo `name`.
- Se consideran casos especiales (por ejemplo, `G.Skill`).

### 3.2 Resumen

- **Número total de fabricantes únicos:**  
- **Ejemplos de fabricantes identificados:**
  - AMD  
  - Intel  
  - Corsair  
  - ASUS  
  - G.Skill  

*Lista completa pendiente de completar.*

---

## 4. Colores identificados

Los colores se obtuvieron a partir de la columna `color`, cuando está presente.

### 4.1 Descripción

- Se separaron colores múltiples indicados con `/`.
- Se normalizaron espacios y valores vacíos.

### 4.2 Resumen

- **Número total de colores únicos:**  
- **Ejemplos de colores identificados:**
  - Black  
  - White  
  - Red  
  - Blue  
  - RGB  

*Lista completa pendiente de completar.*

---

## 5. Conclusiones del EDA

El análisis exploratorio permitió:

- Identificar atributos comunes entre categorías.
- Detectar la alta variabilidad de especificaciones técnicas.
- Justificar la creación de entidades independientes para fabricantes y colores.
- Fundamentar el diseño de un modelo normalizado con soporte para atributos dinámicos (EAV).

Este resumen sirvió como base para el diseño del Modelo B y su posterior extensión hacia una tienda real.

---
