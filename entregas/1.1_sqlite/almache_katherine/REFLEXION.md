# Reflexión sobre el Modelado de Datos – Tienda Informática

---

## Pregunta 1. ¿Cuáles fueron las principales dificultades al analizar los CSV originales?

**Respuesta:**

Una de las principales dificultades fue la heterogeneidad estructural de los archivos CSV. Aunque todos representaban productos de una tienda informática, cada archivo contenía columnas distintas, lo que dificultaba un análisis uniforme inicial.

**Justificación:**

Esta diversidad obligó a realizar un análisis previo de columnas comunes y específicas para identificar patrones reutilizables. Además, la ausencia de claves primarias explícitas y la falta de relaciones entre archivos incrementó la complejidad del diseño del modelo de datos.

---

## Pregunta 2. ¿Por qué el modelo inicial (Modelo A) no es adecuado para una base de datos relacional?

**Respuesta:**

El Modelo A no es adecuado porque presenta una estructura desnormalizada con alta redundancia de información y ausencia de relaciones entre tablas.

**Justificación:**

Cada CSV se convierte en una tabla independiente, repitiendo atributos comunes como nombre, precio o color, lo que genera problemas de mantenimiento, inconsistencias y dificulta la escalabilidad del sistema.

---

## Pregunta 3. ¿Qué criterios se utilizaron para identificar las entidades del Modelo B?

**Respuesta:**

Las entidades se identificaron combinando el análisis estructural de los CSV con el conocimiento del dominio del problema.

**Justificación:**

Se detectaron conceptos del mundo real como productos, categorías, fabricantes y colores que aparecían repetidamente en los datos. Estos conceptos poseen identidad propia y relaciones claras, lo que justifica su modelado como entidades independientes.

---

## Pregunta 4. ¿Por qué se decidió utilizar un modelo normalizado en tercera forma normal (3NF)?

**Respuesta:**

Se optó por un modelo en 3NF para reducir la redundancia y mejorar la integridad de los datos.

**Justificación:**

En tercera forma normal, cada atributo depende únicamente de la clave primaria, eliminando dependencias transitivas. Esto facilita el mantenimiento, evita inconsistencias y permite realizar consultas más fiables y eficientes.

---

## Pregunta 5. ¿Por qué se utilizó una tabla EAV para las especificaciones de los productos?

**Respuesta:**

La tabla EAV se utilizó para gestionar la gran variabilidad de atributos entre los distintos tipos de productos.

**Justificación:**

Dado que cada categoría tiene especificaciones distintas, crear una tabla específica por tipo de producto no era escalable. El patrón EAV permite almacenar atributos dinámicos sin modificar el esquema de la base de datos, manteniendo la flexibilidad del modelo.

---

## Pregunta 6. ¿Cómo facilita el Modelo B la extensión hacia una tienda real (e-commerce)?

**Respuesta:**

El Modelo B proporciona una base sólida y extensible sobre la que se pueden añadir nuevas funcionalidades propias de una tienda real.

**Justificación:**

Al centralizar los productos y normalizar las entidades principales, es posible incorporar fácilmente tablas adicionales como clientes, pedidos, pagos y envíos sin afectar al catálogo. Esto permite evolucionar el sistema hacia un entorno de e-commerce manteniendo la coherencia del diseño.

---

> **Conclusión final:**  
> El proceso de análisis y normalización permitió transformar un conjunto de archivos heterogéneos en un modelo de datos coherente, escalable y alineado con las buenas prácticas de diseño de bases de datos relacionales.
