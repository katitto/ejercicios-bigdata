# Dashboard EDA NYC Taxi – Tu Nombre

Este dashboard muestra un análisis exploratorio sencillo del dataset de taxis de Nueva York.

## ¿Qué hace?

- Calcula estadísticas básicas:
  - Total de viajes
  - Número de columnas
  - Distancia media y mediana
  - Tarifa media y mediana
  - Número de pasajeros más frecuente

- Muestra 3 gráficos:
  1. Distribución de distancias (`trip_distance`)
  2. Distribución de tarifas (`fare_amount`)
  3. Número de viajes por número de pasajeros (`passenger_count`)

- Incluye una tabla con:
  - Nombre de columna
  - Tipo de dato
  - Número de valores nulos

## Cómo ejecutarlo

Desde la carpeta del proyecto principal:

```bash
cd dashboards/tu-nombre-dashboard
python app.py
