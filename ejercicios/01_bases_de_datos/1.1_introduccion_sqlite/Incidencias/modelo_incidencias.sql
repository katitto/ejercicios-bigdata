PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS incidencias;
DROP TABLE IF EXISTS departamentos;
DROP TABLE IF EXISTS tipos_incidencia;

CREATE TABLE departamentos (
  id_departamento INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE tipos_incidencia (
  id_tipo INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE incidencias (
  numero_incidencia INTEGER PRIMARY KEY,
  tipo_id INTEGER NOT NULL,
  departamento_id INTEGER NOT NULL,

  llegada TEXT NOT NULL,
  respuesta TEXT,

  target REAL,
  on_time INTEGER CHECK (on_time IN (0,1)),

  anio_llegada INTEGER,
  mes_llegada INTEGER,

  tiempo_respuesta REAL,
  desviacion REAL,

  FOREIGN KEY (tipo_id) REFERENCES tipos_incidencia(id_tipo),
  FOREIGN KEY (departamento_id) REFERENCES departamentos(id_departamento)
);

CREATE INDEX IF NOT EXISTS idx_incidencias_tipo ON incidencias(tipo_id);
CREATE INDEX IF NOT EXISTS idx_incidencias_depto ON incidencias(departamento_id);
CREATE INDEX IF NOT EXISTS idx_incidencias_anio_mes ON incidencias(anio_llegada, mes_llegada);
