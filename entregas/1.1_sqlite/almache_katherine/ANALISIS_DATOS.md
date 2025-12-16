# Informe de Modelado de Datos – Tienda Informática

---

## 1. Resumen Ejecutivo (estadísticas de los CSVs)

**Objetivo:** presentar una visión general de los datos de partida.

En esta sección se resumirá el contenido de los archivos CSV originales utilizados como fuente de datos.

Se incluirán, entre otros, los siguientes elementos:
- Número total de archivos CSV analizados: 25

---

### 1.2 Inventario de registros por tabla

| Categoría / Tabla              | Nº Registros |
|--------------------------------|-------------:|
| case                           | 5.486 |
| case_accessory                 | 8 |
| case_fan                       | 2.181 |
| cpu                            | 1.353 |
| cpu_cooler                     | 2.166 |
| external_hard_drive            | 519 |
| fan_controller                 | 37 |
| headphones                     | 2.746 |
| internal_hard_drive            | 5.705 |
| keyboard                       | 2.970 |
| memory                         | 11.734 |
| monitor                        | 4.216 |
| motherboard                    | 4.358 |
| mouse                          | 2.355 |
| optical_drive                  | 227 |
| os                             | 62 |
| power_supply                   | 2.805 |
| sound_card                     | 77 |
| speakers                       | 268 |
| thermal_paste                  | 149 |
| ups                            | 683 |
| video_card                     | 5.811 |
| webcam                         | 65 |
| wired_network_card             | 133 |
| wireless_network_card          | 340 |

---

### 1.3 Observaciones generales

- El conjunto de datos contiene **decenas de miles de productos**.
- Existen categorías con gran volumen (`memory`, `video_card`) y otras muy reducidas (`os`, `fan_controller`).
- Esta variabilidad justifica un diseño flexible y normalizado.

*Las estadísticas agregadas de precios (mínimo, máximo y media) se completarán en el análisis EDA.*

---

## 2. Análisis de Estructura (columnas comunes, tabla resumen)

**Objetivo:** identificar patrones estructurales y redundancias entre los CSVs.

### 2.1 Columnas comunes

El análisis de las tablas muestra la existencia de columnas comunes entre múltiples categorías, especialmente:

- `name`
- `price`
- `color`

Estas columnas representan atributos generales del dominio “producto”, independientes de la categoría concreta.

---

### 2.2 Tabla resumen de estructura (ejemplo)

| Categoría / CSV | Columnas Comunes | Columnas Específicas |
|-----------------|------------------|----------------------|
| cpu             | name, price      | core_count, tdp, smt |
| memory          | name, price      | speed, modules, latency |
| video_card      | name, price      | chipset, memory, length |

*Pendiente de completar para todas las categorías.*

---

## 3. Análisis de Calidad (valores nulos, duplicados)

**Objetivo:** evaluar la calidad de los datos originales.

En esta sección se analizarán:

- Valores nulos por columna y por categoría.
- Columnas con alto porcentaje de valores faltantes.
- Posibles duplicados de productos (principalmente por el campo `name`).
- Inconsistencias detectadas en formatos, unidades o valores atípicos.

Este análisis permitirá detectar limitaciones de los datos y justificar decisiones de diseño.

*Pendiente de completar.*

---

## 4. Identificación de Entidades (fabricantes, colores, categorías)

**Objetivo:** justificar las entidades del modelo de datos.

A partir del análisis del dominio y de la estructura de los CSVs se identifican las siguientes entidades principales:

- **Categorías**: derivadas directamente del nombre de cada archivo CSV.
- **Productos**: entidad central que representa cada artículo del catálogo.
- **Fabricantes**: inferidos a partir del nombre del producto.
- **Colores**: valores compartidos por múltiples productos.

Se analizará:
- Por qué estas entidades se modelan de forma independiente.
- Qué relaciones existen entre ellas (1:N y N:M).
- Cómo este diseño reduce redundancia y mejora la integridad.

*Pendiente de completar.*

---

## 5. Diagramas ER (Modelos A y B)

**Objetivo:** representar gráficamente el diseño de los datos.

erDiagram
    CATEGORIAS ||--o{ PRODUCTOS : clasifica
    FABRICANTES ||--o{ PRODUCTOS : fabrica
    PRODUCTOS ||--o{ PRODUCTOS_COLORES : tiene
    COLORES ||--o{ PRODUCTOS_COLORES : asignado_a
    PRODUCTOS ||--o{ PRODUCTO_ATRIBUTOS : describe

erDiagram
    %% Catálogo
    CATEGORIAS ||--o{ PRODUCTOS : clasifica
    FABRICANTES ||--o{ PRODUCTOS : fabrica
    PRODUCTOS ||--o{ PRODUCTOS_COLORES : tiene
    COLORES ||--o{ PRODUCTOS_COLORES : asignado_a
    PRODUCTOS ||--o{ PRODUCTO_ATRIBUTOS : describe

    %% Clientes y direcciones
    CLIENTES ||--o{ DIRECCIONES : posee

    %% Pedidos
    CLIENTES ||--o{ PEDIDOS : realiza
    DIRECCIONES ||--o{ PEDIDOS : envio_facturacion
    PEDIDOS ||--o{ PEDIDO_ITEMS : contiene
    PRODUCTOS ||--o{ PEDIDO_ITEMS : incluido_en

    %% Pago y envío
    PEDIDOS ||--|| PAGOS : genera
    PEDIDOS ||--|| ENVIOS : se_envia_en

### 5.1 Modelo A (Desnormalizado)

- Representa la estructura original de los CSVs.
- Una tabla por tipo de producto.
- Alta redundancia de atributos comunes.
- Sin relaciones explícitas entre tablas.

*(Diagrama incluido en la plantilla, ajustar si es necesario.)*

---

### 5.2 Modelo B (Normalizado)

- Producto como entidad central.
- Separación en entidades: categorías, fabricantes y colores.
- Uso de una tabla EAV para atributos variables.
- Extensión básica hacia una tienda real (clientes, pedidos y envíos).

*(Diagrama incluido en la plantilla, ajustar si es necesario.)*

---

## 6. Conclusiones para el Diseño

**Objetivo:** sintetizar las decisiones de modelado.

En esta sección se recogerán las conclusiones finales del trabajo:

- Ventajas del modelo normalizado frente al modelo desnormalizado.
- Reducción de redundancia y mejora de la mantenibilidad.
- Justificación del uso del patrón EAV.
- Adecuación del modelo para una tienda real y posibles extensiones futuras.

*Pendiente de completar.*

---

> **Nota:**  
> Este documento constituye la base del informe final y se completará progresivamente a lo largo del desarrollo del proyecto.

- Número total de productos.
- Distribución de productos por categoría.
- Estadísticas básicas de precios (mínimo, máximo, media).

*Pendiente de completar con estadísticas reales obtenidas mediante análisis exploratorio.*

---

## 2. Análisis de Estructura (columnas comunes, tabla resumen)

**Objetivo:** identificar patrones estructurales y redundancias entre los CSVs.

### 2.1 Columnas comunes

A partir del análisis de los CSVs se identificarán columnas presentes en múltiples tablas, como:
- `name`
- `price`
- `color`

Estas columnas indican la existencia de atributos comunes entre distintos tipos de productos.

### 2.2 Tabla resumen de estructura

Se construirá una tabla resumen como la siguiente:

| Categoría / CSV | Nº Columnas | Columnas Comunes | Columnas Específicas |
|-----------------|------------|------------------|----------------------|
| cpu             |            | name, price      | core_count, tdp, ... |
| memory          |            | name, price      | speed, modules, ...  |
| video_card      |            | name, price      | chipset, memory, ... |

*Pendiente de completar.*

---

## 3. Análisis de Calidad (valores nulos, duplicados)

**Objetivo:** evaluar la calidad de los datos originales.

En esta sección se analizarán:
- Valores nulos por columna y por CSV.
- Columnas con alto porcentaje de valores faltantes.
- Posibles duplicados de productos (principalmente por el campo `name`).
- Inconsistencias detectadas en los datos (formatos, unidades, valores atípicos).

Se incluirán ejemplos representativos y tablas de apoyo.

*Pendiente de completar.*

---

## 4. Identificación de Entidades (fabricantes, colores, categorías)

**Objetivo:** justificar las entidades del modelo de datos.

A partir del análisis del dominio y de la estructura de los datos, se identifican las siguientes entidades principales:

- **Categorías**: derivadas del nombre de cada archivo CSV.
- **Productos**: entidad central que representa cada artículo.
- **Fabricantes**: extraídos del nombre del producto.
- **Colores**: valores reutilizados por múltiples productos.

En esta sección se explicará:
- Por qué estas entidades se modelan de forma independiente.
- Qué relaciones existen entre ellas (1:N, N:M).
- Cómo contribuyen a la normalización del modelo.

*Pendiente de completar.*

---

## 5. Diagramas ER (Modelos A y B)

**Objetivo:** representar gráficamente el diseño de los datos.

### 5.1 Modelo A (Desnormalizado)

- Representa la estructura original de los CSVs.
- Una tabla por tipo de producto.
- Alta redundancia de atributos comunes.

*(Diagrama incluido en la plantilla, ajustar si es necesario.)*

### 5.2 Modelo B (Normalizado)

- Producto como entidad central.
- Separación en entidades: categorías, fabricantes, colores.
- Uso de una tabla EAV para atributos variables.
- Extensión básica hacia una tienda real (clientes, pedidos, envíos).

*(Diagrama incluido en la plantilla, ajustar si es necesario.)*

---

## 6. Conclusiones para el Diseño

**Objetivo:** sintetizar las decisiones de modelado.

En esta sección se recogerán las conclusiones finales:
- Ventajas del modelo normalizado frente al modelo original.
- Reducción de redundancia y mejora de la mantenibilidad.
- Justificación del uso del patrón EAV.
- Adecuación del modelo para una tienda real y extensiones futuras.

*Pendiente de completar.*

---

> **Nota:** Este documento sirve como base del informe final y se completará progresivamente a lo largo del desarrollo del proyecto.
