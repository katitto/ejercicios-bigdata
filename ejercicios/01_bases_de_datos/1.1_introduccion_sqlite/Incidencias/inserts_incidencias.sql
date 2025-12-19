PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- DEPARTAMENTOS (DISTINTOS)
INSERT OR IGNORE INTO departamentos(nombre) VALUES ('Dept5');
INSERT OR IGNORE INTO departamentos(nombre) VALUES ('Dept3');
INSERT OR IGNORE INTO departamentos(nombre) VALUES ('Dept2');
INSERT OR IGNORE INTO departamentos(nombre) VALUES ('Dept1');
INSERT OR IGNORE INTO departamentos(nombre) VALUES ('Dept6');
INSERT OR IGNORE INTO departamentos(nombre) VALUES ('Dept4');

-- TIPOS (DISTINTOS)
INSERT OR IGNORE INTO tipos_incidencia(nombre) VALUES ('Medio');
INSERT OR IGNORE INTO tipos_incidencia(nombre) VALUES ('Alto');
INSERT OR IGNORE INTO tipos_incidencia(nombre) VALUES ('Bajo');

-- INCIDENCIAS
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-16003 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41521 days'),
  date('1899-12-30', '+41547 days'),
  0,
  2013,
  9,
  26,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-24435 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41310 days'),
  date('1899-12-30', '+41315 days'),
  0,
  2013,
  2,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-28859 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40951 days'),
  date('1899-12-30', '+40954 days'),
  0,
  2012,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-1606 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41379 days'),
  date('1899-12-30', '+41382 days'),
  0,
  2013,
  4,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-8381 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41511 days'),
  date('1899-12-30', '+41546 days'),
  0,
  2013,
  8,
  35,
  30
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20854 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41128 days'),
  date('1899-12-30', '+41130 days'),
  0,
  2012,
  8,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-472 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41366 days'),
  date('1899-12-30', '+41405 days'),
  0,
  2013,
  4,
  39,
  24
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-8874 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41559 days'),
  date('1899-12-30', '+41578 days'),
  0,
  2013,
  10,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4814 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41049 days'),
  date('1899-12-30', '+41051 days'),
  0,
  2012,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18996 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41068 days'),
  date('1899-12-30', '+41086 days'),
  0,
  2012,
  6,
  18,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7842 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41612 days'),
  date('1899-12-30', '+41627 days'),
  0,
  2013,
  12,
  15,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12854 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41534 days'),
  date('1899-12-30', '+41536 days'),
  0,
  2013,
  9,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-16301 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41530 days'),
  date('1899-12-30', '+41535 days'),
  0,
  2013,
  9,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10605 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41153 days'),
  date('1899-12-30', '+41165 days'),
  0,
  2012,
  9,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-11709 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40954 days'),
  date('1899-12-30', '+40955 days'),
  0,
  2012,
  2,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-16263 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41515 days'),
  date('1899-12-30', '+41556 days'),
  0,
  2013,
  8,
  41,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-23520 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41509 days'),
  date('1899-12-30', '+41528 days'),
  0,
  2013,
  8,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-2219 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41184 days'),
  date('1899-12-30', '+41195 days'),
  0,
  2012,
  10,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-16321 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41336 days'),
  date('1899-12-30', '+41385 days'),
  0,
  2013,
  3,
  49,
  44
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-4500 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41118 days'),
  date('1899-12-30', '+41120 days'),
  0,
  2012,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-13857 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41094 days'),
  date('1899-12-30', '+41098 days'),
  0,
  2012,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-27829 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41378 days'),
  date('1899-12-30', '+41378 days'),
  0,
  2013,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20210 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40969 days'),
  date('1899-12-30', '+40971 days'),
  0,
  2012,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7059 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41126 days'),
  date('1899-12-30', '+41129 days'),
  0,
  2012,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-25937 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41266 days'),
  date('1899-12-30', '+41266 days'),
  0,
  2012,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19032 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41277 days'),
  date('1899-12-30', '+41278 days'),
  0,
  2013,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-4478 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41102 days'),
  date('1899-12-30', '+41106 days'),
  0,
  2012,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-16431 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41411 days'),
  date('1899-12-30', '+41431 days'),
  0,
  2013,
  5,
  20,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-21657 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41219 days'),
  date('1899-12-30', '+41219 days'),
  0,
  2012,
  11,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-12688 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41115 days'),
  date('1899-12-30', '+41118 days'),
  0,
  2012,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18576 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41234 days'),
  date('1899-12-30', '+41242 days'),
  0,
  2012,
  11,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4510 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41098 days'),
  date('1899-12-30', '+41114 days'),
  0,
  2012,
  7,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-5720 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41509 days'),
  date('1899-12-30', '+41513 days'),
  0,
  2013,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6079 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41306 days'),
  date('1899-12-30', '+41308 days'),
  0,
  2013,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-3587 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41426 days'),
  date('1899-12-30', '+41428 days'),
  0,
  2013,
  6,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6503 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41205 days'),
  date('1899-12-30', '+41218 days'),
  0,
  2012,
  10,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2657 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40930 days'),
  date('1899-12-30', '+40948 days'),
  0,
  2012,
  1,
  18,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-29562 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41446 days'),
  date('1899-12-30', '+41450 days'),
  0,
  2013,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-13004 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41007 days'),
  date('1899-12-30', '+41019 days'),
  0,
  2012,
  4,
  12,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-2331 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41119 days'),
  date('1899-12-30', '+41120 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-11370 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41159 days'),
  date('1899-12-30', '+41172 days'),
  0,
  2012,
  9,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-16726 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41445 days'),
  date('1899-12-30', '+41486 days'),
  0,
  2013,
  6,
  41,
  36
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-21016 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41032 days'),
  date('1899-12-30', '+41034 days'),
  0,
  2012,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-15541 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41389 days'),
  date('1899-12-30', '+41410 days'),
  0,
  2013,
  4,
  21,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-27154 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41318 days'),
  date('1899-12-30', '+41343 days'),
  0,
  2013,
  2,
  25,
  20
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-12049 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41427 days'),
  date('1899-12-30', '+41436 days'),
  0,
  2013,
  6,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-8284 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41086 days'),
  date('1899-12-30', '+41094 days'),
  0,
  2012,
  6,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9707 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41096 days'),
  date('1899-12-30', '+41096 days'),
  0,
  2012,
  7,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11233 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41512 days'),
  date('1899-12-30', '+41516 days'),
  0,
  2013,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26054 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41124 days'),
  date('1899-12-30', '+41125 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-25227 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41416 days'),
  date('1899-12-30', '+41425 days'),
  0,
  2013,
  5,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-2340 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41222 days'),
  date('1899-12-30', '+41224 days'),
  0,
  2012,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17790 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41133 days'),
  date('1899-12-30', '+41136 days'),
  0,
  2012,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-17966 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41351 days'),
  date('1899-12-30', '+41354 days'),
  0,
  2013,
  3,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-22800 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41613 days'),
  date('1899-12-30', '+41645 days'),
  0,
  2013,
  12,
  32,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6291 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41332 days'),
  date('1899-12-30', '+41339 days'),
  0,
  2013,
  2,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-28498 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41439 days'),
  date('1899-12-30', '+41442 days'),
  0,
  2013,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-5867 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41318 days'),
  date('1899-12-30', '+41333 days'),
  0,
  2013,
  2,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20776 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41072 days'),
  date('1899-12-30', '+41088 days'),
  0,
  2012,
  6,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-8662 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41209 days'),
  date('1899-12-30', '+41210 days'),
  0,
  2012,
  10,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-4550 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41437 days'),
  date('1899-12-30', '+41437 days'),
  0,
  2013,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-4351 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41284 days'),
  date('1899-12-30', '+41284 days'),
  0,
  2013,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-13529 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41115 days'),
  date('1899-12-30', '+41117 days'),
  0,
  2012,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-17206 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41441 days'),
  date('1899-12-30', '+41451 days'),
  0,
  2013,
  6,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6195 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41636 days'),
  date('1899-12-30', '+41640 days'),
  0,
  2013,
  12,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-29683 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41069 days'),
  date('1899-12-30', '+41072 days'),
  0,
  2012,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3312 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41522 days'),
  date('1899-12-30', '+41529 days'),
  0,
  2013,
  9,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24239 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41613 days'),
  date('1899-12-30', '+41616 days'),
  0,
  2013,
  12,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19763 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41515 days'),
  date('1899-12-30', '+41541 days'),
  0,
  2013,
  8,
  26,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-22456 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41392 days'),
  date('1899-12-30', '+41395 days'),
  0,
  2013,
  4,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-11042 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41529 days'),
  date('1899-12-30', '+41538 days'),
  0,
  2013,
  9,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-8042 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41237 days'),
  date('1899-12-30', '+41241 days'),
  0,
  2012,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-2202 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41081 days'),
  date('1899-12-30', '+41081 days'),
  0,
  2012,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-17744 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40958 days'),
  date('1899-12-30', '+40961 days'),
  0,
  2012,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-4578 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41472 days'),
  date('1899-12-30', '+41476 days'),
  0,
  2013,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1770 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41474 days'),
  date('1899-12-30', '+41479 days'),
  0,
  2013,
  7,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23103 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41165 days'),
  date('1899-12-30', '+41202 days'),
  0,
  2012,
  9,
  37,
  22
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22758 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41587 days'),
  date('1899-12-30', '+41590 days'),
  0,
  2013,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-14505 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41597 days'),
  date('1899-12-30', '+41597 days'),
  0,
  2013,
  11,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19858 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40920 days'),
  date('1899-12-30', '+40921 days'),
  0,
  2012,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-24237 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40946 days'),
  date('1899-12-30', '+40960 days'),
  0,
  2012,
  2,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-22006 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41183 days'),
  date('1899-12-30', '+41185 days'),
  0,
  2012,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17412 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41450 days'),
  date('1899-12-30', '+41451 days'),
  0,
  2013,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-21926 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40932 days'),
  date('1899-12-30', '+40934 days'),
  0,
  2012,
  1,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6585 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41133 days'),
  date('1899-12-30', '+41137 days'),
  0,
  2012,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19947 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41387 days'),
  date('1899-12-30', '+41402 days'),
  0,
  2013,
  4,
  15,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6676 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41046 days'),
  date('1899-12-30', '+41062 days'),
  0,
  2012,
  5,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-4184 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41598 days'),
  date('1899-12-30', '+41599 days'),
  0,
  2013,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-14865 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41053 days'),
  date('1899-12-30', '+41061 days'),
  0,
  2012,
  5,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-1146 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41056 days'),
  date('1899-12-30', '+41061 days'),
  0,
  2012,
  5,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-10744 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41448 days'),
  date('1899-12-30', '+41479 days'),
  0,
  2013,
  6,
  31,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-8342 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41394 days'),
  date('1899-12-30', '+41396 days'),
  0,
  2013,
  4,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-9570 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41064 days'),
  date('1899-12-30', '+41068 days'),
  0,
  2012,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-17934 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41184 days'),
  date('1899-12-30', '+41190 days'),
  0,
  2012,
  10,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-28909 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41138 days'),
  date('1899-12-30', '+41139 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18015 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41541 days'),
  date('1899-12-30', '+41559 days'),
  0,
  2013,
  9,
  18,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-16492 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41016 days'),
  date('1899-12-30', '+41024 days'),
  0,
  2012,
  4,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15561 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40922 days'),
  date('1899-12-30', '+40963 days'),
  0,
  2012,
  1,
  41,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-4597 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41610 days'),
  date('1899-12-30', '+41646 days'),
  0,
  2013,
  12,
  36,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-12627 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40990 days'),
  date('1899-12-30', '+41006 days'),
  0,
  2012,
  3,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-13762 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41205 days'),
  date('1899-12-30', '+41213 days'),
  0,
  2012,
  10,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-24851 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41043 days'),
  date('1899-12-30', '+41051 days'),
  0,
  2012,
  5,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-16148 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40977 days'),
  date('1899-12-30', '+40987 days'),
  0,
  2012,
  3,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-28819 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41049 days'),
  date('1899-12-30', '+41076 days'),
  0,
  2012,
  5,
  27,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-6370 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41352 days'),
  date('1899-12-30', '+41362 days'),
  0,
  2013,
  3,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-2363 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41032 days'),
  date('1899-12-30', '+41035 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-25092 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41045 days'),
  date('1899-12-30', '+41058 days'),
  0,
  2012,
  5,
  13,
  8
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19354 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41550 days'),
  date('1899-12-30', '+41568 days'),
  0,
  2013,
  10,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-18209 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41234 days'),
  date('1899-12-30', '+41235 days'),
  0,
  2012,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8044 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41254 days'),
  date('1899-12-30', '+41256 days'),
  0,
  2012,
  12,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21935 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41467 days'),
  date('1899-12-30', '+41469 days'),
  0,
  2013,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-19528 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41402 days'),
  date('1899-12-30', '+41419 days'),
  0,
  2013,
  5,
  17,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1594 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40944 days'),
  date('1899-12-30', '+40947 days'),
  0,
  2012,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-387 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41109 days'),
  date('1899-12-30', '+41146 days'),
  0,
  2012,
  7,
  37,
  22
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-29438 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41217 days'),
  date('1899-12-30', '+41232 days'),
  0,
  2012,
  11,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-21069 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41473 days'),
  date('1899-12-30', '+41477 days'),
  0,
  2013,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24302 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41134 days'),
  date('1899-12-30', '+41138 days'),
  0,
  2012,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-29083 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41170 days'),
  date('1899-12-30', '+41170 days'),
  0,
  2012,
  9,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-23402 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41339 days'),
  date('1899-12-30', '+41357 days'),
  0,
  2013,
  3,
  18,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-3548 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41559 days'),
  date('1899-12-30', '+41561 days'),
  0,
  2013,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-14101 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41439 days'),
  date('1899-12-30', '+41439 days'),
  0,
  2013,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-15183 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41045 days'),
  date('1899-12-30', '+41048 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-10943 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41452 days'),
  date('1899-12-30', '+41463 days'),
  0,
  2013,
  6,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-3284 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41039 days'),
  date('1899-12-30', '+41041 days'),
  0,
  2012,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-20778 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41563 days'),
  date('1899-12-30', '+41600 days'),
  0,
  2013,
  10,
  37,
  32
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18752 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41161 days'),
  date('1899-12-30', '+41179 days'),
  0,
  2012,
  9,
  18,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26278 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41499 days'),
  date('1899-12-30', '+41503 days'),
  0,
  2013,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-9749 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41267 days'),
  date('1899-12-30', '+41281 days'),
  0,
  2012,
  12,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-5674 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41582 days'),
  date('1899-12-30', '+41584 days'),
  0,
  2013,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-4023 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41284 days'),
  date('1899-12-30', '+41289 days'),
  0,
  2013,
  1,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-14005 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41611 days'),
  date('1899-12-30', '+41651 days'),
  0,
  2013,
  12,
  40,
  35
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-19479 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40941 days'),
  date('1899-12-30', '+40961 days'),
  0,
  2012,
  2,
  20,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-28714 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41224 days'),
  date('1899-12-30', '+41237 days'),
  0,
  2012,
  11,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-2057 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41607 days'),
  date('1899-12-30', '+41615 days'),
  0,
  2013,
  11,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-19884 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41090 days'),
  date('1899-12-30', '+41096 days'),
  0,
  2012,
  6,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-7474 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41585 days'),
  date('1899-12-30', '+41591 days'),
  0,
  2013,
  11,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22939 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41113 days'),
  date('1899-12-30', '+41113 days'),
  0,
  2012,
  7,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10896 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41221 days'),
  date('1899-12-30', '+41223 days'),
  0,
  2012,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-29118 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41315 days'),
  date('1899-12-30', '+41342 days'),
  0,
  2013,
  2,
  27,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-26106 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41523 days'),
  date('1899-12-30', '+41542 days'),
  0,
  2013,
  9,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-26535 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41560 days'),
  date('1899-12-30', '+41561 days'),
  0,
  2013,
  10,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-23221 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41606 days'),
  date('1899-12-30', '+41611 days'),
  0,
  2013,
  11,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-22135 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41033 days'),
  date('1899-12-30', '+41035 days'),
  0,
  2012,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-11530 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41259 days'),
  date('1899-12-30', '+41278 days'),
  0,
  2012,
  12,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-2366 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41596 days'),
  date('1899-12-30', '+41614 days'),
  0,
  2013,
  11,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-1509 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41094 days'),
  date('1899-12-30', '+41102 days'),
  0,
  2012,
  7,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7869 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41216 days'),
  date('1899-12-30', '+41219 days'),
  0,
  2012,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-17584 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41336 days'),
  date('1899-12-30', '+41371 days'),
  0,
  2013,
  3,
  35,
  30
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-25006 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41424 days'),
  date('1899-12-30', '+41427 days'),
  0,
  2013,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-10687 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41110 days'),
  date('1899-12-30', '+41111 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-4540 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41439 days'),
  date('1899-12-30', '+41441 days'),
  0,
  2013,
  6,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7197 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40932 days'),
  date('1899-12-30', '+40947 days'),
  0,
  2012,
  1,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-25268 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41462 days'),
  date('1899-12-30', '+41478 days'),
  0,
  2013,
  7,
  16,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-28290 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41579 days'),
  date('1899-12-30', '+41619 days'),
  0,
  2013,
  11,
  40,
  25
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-27937 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41291 days'),
  date('1899-12-30', '+41336 days'),
  0,
  2013,
  1,
  45,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11299 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40990 days'),
  date('1899-12-30', '+41010 days'),
  0,
  2012,
  3,
  20,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-22238 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41561 days'),
  date('1899-12-30', '+41565 days'),
  0,
  2013,
  10,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-2116 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41168 days'),
  date('1899-12-30', '+41202 days'),
  0,
  2012,
  9,
  34,
  19
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-27200 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40964 days'),
  date('1899-12-30', '+40964 days'),
  0,
  2012,
  2,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-25222 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41103 days'),
  date('1899-12-30', '+41103 days'),
  0,
  2012,
  7,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-2802 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41317 days'),
  date('1899-12-30', '+41325 days'),
  0,
  2013,
  2,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-5384 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41547 days'),
  date('1899-12-30', '+41548 days'),
  0,
  2013,
  9,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-8098 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41193 days'),
  date('1899-12-30', '+41209 days'),
  0,
  2012,
  10,
  16,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2609 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40993 days'),
  date('1899-12-30', '+40996 days'),
  0,
  2012,
  3,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18684 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40997 days'),
  date('1899-12-30', '+41015 days'),
  0,
  2012,
  3,
  18,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-9388 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41286 days'),
  date('1899-12-30', '+41289 days'),
  0,
  2013,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-13813 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41165 days'),
  date('1899-12-30', '+41167 days'),
  0,
  2012,
  9,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-6820 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41206 days'),
  date('1899-12-30', '+41210 days'),
  0,
  2012,
  10,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20970 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41055 days'),
  date('1899-12-30', '+41062 days'),
  0,
  2012,
  5,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-23655 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41225 days'),
  date('1899-12-30', '+41242 days'),
  0,
  2012,
  11,
  17,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23220 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41375 days'),
  date('1899-12-30', '+41393 days'),
  0,
  2013,
  4,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-9838 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41330 days'),
  date('1899-12-30', '+41336 days'),
  0,
  2013,
  2,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-2144 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41269 days'),
  date('1899-12-30', '+41281 days'),
  0,
  2012,
  12,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-3601 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41228 days'),
  date('1899-12-30', '+41228 days'),
  0,
  2012,
  11,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6669 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41453 days'),
  date('1899-12-30', '+41453 days'),
  0,
  2013,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-28676 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41087 days'),
  date('1899-12-30', '+41129 days'),
  0,
  2012,
  6,
  42,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-25616 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41589 days'),
  date('1899-12-30', '+41592 days'),
  0,
  2013,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-5686 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41122 days'),
  date('1899-12-30', '+41138 days'),
  0,
  2012,
  8,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-19265 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40990 days'),
  date('1899-12-30', '+41011 days'),
  0,
  2012,
  3,
  21,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-29281 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41233 days'),
  date('1899-12-30', '+41235 days'),
  0,
  2012,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-22758 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41036 days'),
  date('1899-12-30', '+41050 days'),
  0,
  2012,
  5,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20073 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40985 days'),
  date('1899-12-30', '+40988 days'),
  0,
  2012,
  3,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-1651 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40977 days'),
  date('1899-12-30', '+40979 days'),
  0,
  2012,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17943 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41452 days'),
  date('1899-12-30', '+41464 days'),
  0,
  2013,
  6,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17429 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41449 days'),
  date('1899-12-30', '+41454 days'),
  0,
  2013,
  6,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20779 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41623 days'),
  date('1899-12-30', '+41654 days'),
  0,
  2013,
  12,
  31,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-8288 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41052 days'),
  date('1899-12-30', '+41070 days'),
  0,
  2012,
  5,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-20200 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41341 days'),
  date('1899-12-30', '+41345 days'),
  0,
  2013,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-28011 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41403 days'),
  date('1899-12-30', '+41406 days'),
  0,
  2013,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23339 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41412 days'),
  date('1899-12-30', '+41427 days'),
  0,
  2013,
  5,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-23237 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41132 days'),
  date('1899-12-30', '+41133 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-7244 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41259 days'),
  date('1899-12-30', '+41269 days'),
  0,
  2012,
  12,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6940 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41548 days'),
  date('1899-12-30', '+41550 days'),
  0,
  2013,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-29955 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41584 days'),
  date('1899-12-30', '+41584 days'),
  0,
  2013,
  11,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23439 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41002 days'),
  date('1899-12-30', '+41007 days'),
  0,
  2012,
  4,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-9827 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41156 days'),
  date('1899-12-30', '+41174 days'),
  0,
  2012,
  9,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-27734 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41297 days'),
  date('1899-12-30', '+41301 days'),
  0,
  2013,
  1,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-12156 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41072 days'),
  date('1899-12-30', '+41094 days'),
  0,
  2012,
  6,
  22,
  17
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-19498 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40966 days'),
  date('1899-12-30', '+40981 days'),
  0,
  2012,
  2,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-29669 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41175 days'),
  date('1899-12-30', '+41194 days'),
  0,
  2012,
  9,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-29526 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41047 days'),
  date('1899-12-30', '+41048 days'),
  0,
  2012,
  5,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20952 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41437 days'),
  date('1899-12-30', '+41440 days'),
  0,
  2013,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-13961 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41202 days'),
  date('1899-12-30', '+41203 days'),
  0,
  2012,
  10,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-18362 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41551 days'),
  date('1899-12-30', '+41554 days'),
  0,
  2013,
  10,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-19098 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41403 days'),
  date('1899-12-30', '+41406 days'),
  0,
  2013,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-4495 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41386 days'),
  date('1899-12-30', '+41409 days'),
  0,
  2013,
  4,
  23,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27099 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41333 days'),
  date('1899-12-30', '+41335 days'),
  0,
  2013,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-13778 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41066 days'),
  date('1899-12-30', '+41069 days'),
  0,
  2012,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10407 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40971 days'),
  date('1899-12-30', '+41012 days'),
  0,
  2012,
  3,
  41,
  36
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23230 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41449 days'),
  date('1899-12-30', '+41449 days'),
  0,
  2013,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10190 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41378 days'),
  date('1899-12-30', '+41378 days'),
  0,
  2013,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-13974 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41536 days'),
  date('1899-12-30', '+41539 days'),
  0,
  2013,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-1620 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41066 days'),
  date('1899-12-30', '+41109 days'),
  0,
  2012,
  6,
  43,
  28
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-22551 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41240 days'),
  date('1899-12-30', '+41254 days'),
  0,
  2012,
  11,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6299 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41258 days'),
  date('1899-12-30', '+41259 days'),
  0,
  2012,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-8599 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41166 days'),
  date('1899-12-30', '+41170 days'),
  0,
  2012,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-19646 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40935 days'),
  date('1899-12-30', '+40974 days'),
  0,
  2012,
  1,
  39,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-2963 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41317 days'),
  date('1899-12-30', '+41319 days'),
  0,
  2013,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18558 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41250 days'),
  date('1899-12-30', '+41266 days'),
  0,
  2012,
  12,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17800 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41260 days'),
  date('1899-12-30', '+41264 days'),
  0,
  2012,
  12,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22161 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41574 days'),
  date('1899-12-30', '+41575 days'),
  0,
  2013,
  10,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-17734 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41011 days'),
  date('1899-12-30', '+41017 days'),
  0,
  2012,
  4,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-5951 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41094 days'),
  date('1899-12-30', '+41102 days'),
  0,
  2012,
  7,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18629 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41181 days'),
  date('1899-12-30', '+41182 days'),
  0,
  2012,
  9,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-17150 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41089 days'),
  date('1899-12-30', '+41093 days'),
  0,
  2012,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-28049 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41192 days'),
  date('1899-12-30', '+41238 days'),
  0,
  2012,
  10,
  46,
  31
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6589 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40992 days'),
  date('1899-12-30', '+41033 days'),
  0,
  2012,
  3,
  41,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-28948 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41085 days'),
  date('1899-12-30', '+41101 days'),
  0,
  2012,
  6,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-9925 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40919 days'),
  date('1899-12-30', '+40931 days'),
  0,
  2012,
  1,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-5673 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41345 days'),
  date('1899-12-30', '+41348 days'),
  0,
  2013,
  3,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-28500 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41055 days'),
  date('1899-12-30', '+41056 days'),
  0,
  2012,
  5,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-18834 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41038 days'),
  date('1899-12-30', '+41043 days'),
  0,
  2012,
  5,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17670 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41111 days'),
  date('1899-12-30', '+41112 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-13101 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41059 days'),
  date('1899-12-30', '+41070 days'),
  0,
  2012,
  5,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7902 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41475 days'),
  date('1899-12-30', '+41476 days'),
  0,
  2013,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-9491 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40978 days'),
  date('1899-12-30', '+40993 days'),
  0,
  2012,
  3,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1460 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41017 days'),
  date('1899-12-30', '+41025 days'),
  0,
  2012,
  4,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-21218 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41092 days'),
  date('1899-12-30', '+41112 days'),
  0,
  2012,
  7,
  20,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-14987 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41203 days'),
  date('1899-12-30', '+41235 days'),
  0,
  2012,
  10,
  32,
  27
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-29649 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41433 days'),
  date('1899-12-30', '+41452 days'),
  0,
  2013,
  6,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-15801 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41562 days'),
  date('1899-12-30', '+41572 days'),
  0,
  2013,
  10,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-4452 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41423 days'),
  date('1899-12-30', '+41425 days'),
  0,
  2013,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17207 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41532 days'),
  date('1899-12-30', '+41554 days'),
  0,
  2013,
  9,
  22,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19475 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41553 days'),
  date('1899-12-30', '+41567 days'),
  0,
  2013,
  10,
  14,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-5656 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41493 days'),
  date('1899-12-30', '+41537 days'),
  0,
  2013,
  8,
  44,
  29
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-13435 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41129 days'),
  date('1899-12-30', '+41130 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-10046 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41009 days'),
  date('1899-12-30', '+41010 days'),
  0,
  2012,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-11977 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41185 days'),
  date('1899-12-30', '+41223 days'),
  0,
  2012,
  10,
  38,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-981 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41428 days'),
  date('1899-12-30', '+41440 days'),
  0,
  2013,
  6,
  12,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-15155 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41008 days'),
  date('1899-12-30', '+41010 days'),
  0,
  2012,
  4,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-5311 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41501 days'),
  date('1899-12-30', '+41543 days'),
  0,
  2013,
  8,
  42,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21912 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41348 days'),
  date('1899-12-30', '+41350 days'),
  0,
  2013,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18751 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41085 days'),
  date('1899-12-30', '+41086 days'),
  0,
  2012,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-10612 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41507 days'),
  date('1899-12-30', '+41520 days'),
  0,
  2013,
  8,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26904 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41031 days'),
  date('1899-12-30', '+41039 days'),
  0,
  2012,
  5,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-2190 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41379 days'),
  date('1899-12-30', '+41428 days'),
  0,
  2013,
  4,
  49,
  34
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-2493 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41231 days'),
  date('1899-12-30', '+41241 days'),
  0,
  2012,
  11,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-9979 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41453 days'),
  date('1899-12-30', '+41454 days'),
  0,
  2013,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24113 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41091 days'),
  date('1899-12-30', '+41092 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17783 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41510 days'),
  date('1899-12-30', '+41510 days'),
  0,
  2013,
  8,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-9321 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41637 days'),
  date('1899-12-30', '+41647 days'),
  0,
  2013,
  12,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-15252 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41522 days'),
  date('1899-12-30', '+41537 days'),
  0,
  2013,
  9,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-2383 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41632 days'),
  date('1899-12-30', '+41634 days'),
  0,
  2013,
  12,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7128 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41328 days'),
  date('1899-12-30', '+41329 days'),
  0,
  2013,
  2,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-14463 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41544 days'),
  date('1899-12-30', '+41554 days'),
  0,
  2013,
  9,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-10413 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41572 days'),
  date('1899-12-30', '+41578 days'),
  0,
  2013,
  10,
  6,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11606 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41367 days'),
  date('1899-12-30', '+41405 days'),
  0,
  2013,
  4,
  38,
  23
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1038 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41167 days'),
  date('1899-12-30', '+41175 days'),
  0,
  2012,
  9,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-23292 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41610 days'),
  date('1899-12-30', '+41618 days'),
  0,
  2013,
  12,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-19080 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41168 days'),
  date('1899-12-30', '+41169 days'),
  0,
  2012,
  9,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-21897 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41294 days'),
  date('1899-12-30', '+41341 days'),
  0,
  2013,
  1,
  47,
  42
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-19102 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41356 days'),
  date('1899-12-30', '+41369 days'),
  0,
  2013,
  3,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-10860 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41523 days'),
  date('1899-12-30', '+41524 days'),
  0,
  2013,
  9,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19667 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41084 days'),
  date('1899-12-30', '+41108 days'),
  0,
  2012,
  6,
  24,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-16877 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41481 days'),
  date('1899-12-30', '+41484 days'),
  0,
  2013,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-3597 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41002 days'),
  date('1899-12-30', '+41049 days'),
  0,
  2012,
  4,
  47,
  42
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-18928 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41626 days'),
  date('1899-12-30', '+41626 days'),
  0,
  2013,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-18038 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41101 days'),
  date('1899-12-30', '+41120 days'),
  0,
  2012,
  7,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-4455 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41196 days'),
  date('1899-12-30', '+41200 days'),
  0,
  2012,
  10,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-890 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41615 days'),
  date('1899-12-30', '+41616 days'),
  0,
  2013,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20498 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41562 days'),
  date('1899-12-30', '+41578 days'),
  0,
  2013,
  10,
  16,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-7666 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41237 days'),
  date('1899-12-30', '+41237 days'),
  0,
  2012,
  11,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-5107 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41284 days'),
  date('1899-12-30', '+41290 days'),
  0,
  2013,
  1,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20347 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41429 days'),
  date('1899-12-30', '+41439 days'),
  0,
  2013,
  6,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-1841 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41122 days'),
  date('1899-12-30', '+41144 days'),
  0,
  2012,
  8,
  22,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-27287 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41545 days'),
  date('1899-12-30', '+41545 days'),
  0,
  2013,
  9,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-17660 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41562 days'),
  date('1899-12-30', '+41573 days'),
  0,
  2013,
  10,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20738 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41307 days'),
  date('1899-12-30', '+41336 days'),
  0,
  2013,
  2,
  29,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22034 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41059 days'),
  date('1899-12-30', '+41075 days'),
  0,
  2012,
  5,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-16056 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41519 days'),
  date('1899-12-30', '+41534 days'),
  0,
  2013,
  9,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22571 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41561 days'),
  date('1899-12-30', '+41595 days'),
  0,
  2013,
  10,
  34,
  29
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-24144 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41198 days'),
  date('1899-12-30', '+41207 days'),
  0,
  2012,
  10,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9985 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41144 days'),
  date('1899-12-30', '+41147 days'),
  0,
  2012,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-6206 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41346 days'),
  date('1899-12-30', '+41350 days'),
  0,
  2013,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-22708 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41005 days'),
  date('1899-12-30', '+41015 days'),
  0,
  2012,
  4,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-27363 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41500 days'),
  date('1899-12-30', '+41501 days'),
  0,
  2013,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-18969 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41514 days'),
  date('1899-12-30', '+41526 days'),
  0,
  2013,
  8,
  12,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-23202 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40964 days'),
  date('1899-12-30', '+40967 days'),
  0,
  2012,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-1636 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41637 days'),
  date('1899-12-30', '+41652 days'),
  0,
  2013,
  12,
  15,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10815 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41634 days'),
  date('1899-12-30', '+41649 days'),
  0,
  2013,
  12,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8657 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41082 days'),
  date('1899-12-30', '+41117 days'),
  0,
  2012,
  6,
  35,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23395 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41155 days'),
  date('1899-12-30', '+41166 days'),
  0,
  2012,
  9,
  11,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9390 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41524 days'),
  date('1899-12-30', '+41535 days'),
  0,
  2013,
  9,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-14949 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41601 days'),
  date('1899-12-30', '+41605 days'),
  0,
  2013,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-24647 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41102 days'),
  date('1899-12-30', '+41114 days'),
  0,
  2012,
  7,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19185 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41407 days'),
  date('1899-12-30', '+41407 days'),
  0,
  2013,
  5,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15764 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41561 days'),
  date('1899-12-30', '+41577 days'),
  0,
  2013,
  10,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-14152 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41590 days'),
  date('1899-12-30', '+41598 days'),
  0,
  2013,
  11,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-25499 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41246 days'),
  date('1899-12-30', '+41248 days'),
  0,
  2012,
  12,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-1671 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41530 days'),
  date('1899-12-30', '+41568 days'),
  0,
  2013,
  9,
  38,
  8
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-11088 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41484 days'),
  date('1899-12-30', '+41493 days'),
  0,
  2013,
  7,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8150 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40921 days'),
  date('1899-12-30', '+40934 days'),
  0,
  2012,
  1,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17258 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41468 days'),
  date('1899-12-30', '+41471 days'),
  0,
  2013,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20809 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41367 days'),
  date('1899-12-30', '+41384 days'),
  0,
  2013,
  4,
  17,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-24511 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41270 days'),
  date('1899-12-30', '+41272 days'),
  0,
  2012,
  12,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-918 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41308 days'),
  date('1899-12-30', '+41325 days'),
  0,
  2013,
  2,
  17,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-15496 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41557 days'),
  date('1899-12-30', '+41571 days'),
  0,
  2013,
  10,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3070 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41216 days'),
  date('1899-12-30', '+41230 days'),
  0,
  2012,
  11,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-29781 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41298 days'),
  date('1899-12-30', '+41301 days'),
  0,
  2013,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17087 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41531 days'),
  date('1899-12-30', '+41531 days'),
  0,
  2013,
  9,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-14834 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41179 days'),
  date('1899-12-30', '+41193 days'),
  0,
  2012,
  9,
  14,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26594 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41439 days'),
  date('1899-12-30', '+41445 days'),
  0,
  2013,
  6,
  6,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8526 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41104 days'),
  date('1899-12-30', '+41119 days'),
  0,
  2012,
  7,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-5845 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41558 days'),
  date('1899-12-30', '+41566 days'),
  0,
  2013,
  10,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-25978 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41019 days'),
  date('1899-12-30', '+41019 days'),
  0,
  2012,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-3847 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40949 days'),
  date('1899-12-30', '+40958 days'),
  0,
  2012,
  2,
  9,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-21039 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41250 days'),
  date('1899-12-30', '+41250 days'),
  0,
  2012,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22351 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40947 days'),
  date('1899-12-30', '+40947 days'),
  0,
  2012,
  2,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-249 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40982 days'),
  date('1899-12-30', '+40985 days'),
  0,
  2012,
  3,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-1778 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40951 days'),
  date('1899-12-30', '+40970 days'),
  0,
  2012,
  2,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-14554 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41040 days'),
  date('1899-12-30', '+41067 days'),
  0,
  2012,
  5,
  27,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26634 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41106 days'),
  date('1899-12-30', '+41109 days'),
  0,
  2012,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-1617 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41207 days'),
  date('1899-12-30', '+41222 days'),
  0,
  2012,
  10,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-29475 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41344 days'),
  date('1899-12-30', '+41355 days'),
  0,
  2013,
  3,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-29029 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41316 days'),
  date('1899-12-30', '+41351 days'),
  0,
  2013,
  2,
  35,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20002 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41286 days'),
  date('1899-12-30', '+41324 days'),
  0,
  2013,
  1,
  38,
  23
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-26225 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41363 days'),
  date('1899-12-30', '+41365 days'),
  0,
  2013,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-13321 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41607 days'),
  date('1899-12-30', '+41618 days'),
  0,
  2013,
  11,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20429 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41554 days'),
  date('1899-12-30', '+41556 days'),
  0,
  2013,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-8952 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41586 days'),
  date('1899-12-30', '+41605 days'),
  0,
  2013,
  11,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9430 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41119 days'),
  date('1899-12-30', '+41130 days'),
  0,
  2012,
  7,
  11,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-19648 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41613 days'),
  date('1899-12-30', '+41613 days'),
  0,
  2013,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21508 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41341 days'),
  date('1899-12-30', '+41343 days'),
  0,
  2013,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6569 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41551 days'),
  date('1899-12-30', '+41554 days'),
  0,
  2013,
  10,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-20325 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41083 days'),
  date('1899-12-30', '+41084 days'),
  0,
  2012,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-4898 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41127 days'),
  date('1899-12-30', '+41130 days'),
  0,
  2012,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10084 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41399 days'),
  date('1899-12-30', '+41420 days'),
  0,
  2013,
  5,
  21,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-11438 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41254 days'),
  date('1899-12-30', '+41260 days'),
  0,
  2012,
  12,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-13777 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41520 days'),
  date('1899-12-30', '+41530 days'),
  0,
  2013,
  9,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-23275 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41506 days'),
  date('1899-12-30', '+41510 days'),
  0,
  2013,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-24829 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41407 days'),
  date('1899-12-30', '+41409 days'),
  0,
  2013,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-24048 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41077 days'),
  date('1899-12-30', '+41114 days'),
  0,
  2012,
  6,
  37,
  22
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-9955 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41515 days'),
  date('1899-12-30', '+41525 days'),
  0,
  2013,
  8,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-21905 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41047 days'),
  date('1899-12-30', '+41064 days'),
  0,
  2012,
  5,
  17,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-18542 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41399 days'),
  date('1899-12-30', '+41419 days'),
  0,
  2013,
  5,
  20,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-10698 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41231 days'),
  date('1899-12-30', '+41237 days'),
  0,
  2012,
  11,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-11362 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41360 days'),
  date('1899-12-30', '+41364 days'),
  0,
  2013,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-3487 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41418 days'),
  date('1899-12-30', '+41428 days'),
  0,
  2013,
  5,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18938 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40918 days'),
  date('1899-12-30', '+40919 days'),
  0,
  2012,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-24905 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41104 days'),
  date('1899-12-30', '+41116 days'),
  0,
  2012,
  7,
  12,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-17367 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41490 days'),
  date('1899-12-30', '+41491 days'),
  0,
  2013,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-16456 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40926 days'),
  date('1899-12-30', '+40942 days'),
  0,
  2012,
  1,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-26922 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41295 days'),
  date('1899-12-30', '+41302 days'),
  0,
  2013,
  1,
  7,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6308 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41055 days'),
  date('1899-12-30', '+41061 days'),
  0,
  2012,
  5,
  6,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-16234 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41393 days'),
  date('1899-12-30', '+41394 days'),
  0,
  2013,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-2633 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41623 days'),
  date('1899-12-30', '+41635 days'),
  0,
  2013,
  12,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-12376 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41500 days'),
  date('1899-12-30', '+41503 days'),
  0,
  2013,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-7075 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41255 days'),
  date('1899-12-30', '+41267 days'),
  0,
  2012,
  12,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-14656 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41548 days'),
  date('1899-12-30', '+41548 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-12385 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41195 days'),
  date('1899-12-30', '+41196 days'),
  0,
  2012,
  10,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-7436 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41590 days'),
  date('1899-12-30', '+41601 days'),
  0,
  2013,
  11,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-5811 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40982 days'),
  date('1899-12-30', '+40986 days'),
  0,
  2012,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-14784 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41613 days'),
  date('1899-12-30', '+41639 days'),
  0,
  2013,
  12,
  26,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7280 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40932 days'),
  date('1899-12-30', '+40932 days'),
  0,
  2012,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-27276 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41586 days'),
  date('1899-12-30', '+41586 days'),
  0,
  2013,
  11,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-28961 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41575 days'),
  date('1899-12-30', '+41594 days'),
  0,
  2013,
  10,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-28760 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41428 days'),
  date('1899-12-30', '+41429 days'),
  0,
  2013,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-243 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41491 days'),
  date('1899-12-30', '+41497 days'),
  0,
  2013,
  8,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-28389 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40930 days'),
  date('1899-12-30', '+40942 days'),
  0,
  2012,
  1,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-9719 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41046 days'),
  date('1899-12-30', '+41059 days'),
  0,
  2012,
  5,
  13,
  8
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10747 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41220 days'),
  date('1899-12-30', '+41224 days'),
  0,
  2012,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-23214 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41225 days'),
  date('1899-12-30', '+41241 days'),
  0,
  2012,
  11,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24366 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41057 days'),
  date('1899-12-30', '+41060 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-14435 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41040 days'),
  date('1899-12-30', '+41056 days'),
  0,
  2012,
  5,
  16,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-6461 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40937 days'),
  date('1899-12-30', '+40953 days'),
  0,
  2012,
  1,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-12301 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41051 days'),
  date('1899-12-30', '+41054 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-29181 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41046 days'),
  date('1899-12-30', '+41056 days'),
  0,
  2012,
  5,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-26516 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41537 days'),
  date('1899-12-30', '+41585 days'),
  0,
  2013,
  9,
  48,
  43
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10202 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41567 days'),
  date('1899-12-30', '+41593 days'),
  0,
  2013,
  10,
  26,
  21
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-440 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41061 days'),
  date('1899-12-30', '+41070 days'),
  0,
  2012,
  6,
  9,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-7967 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41532 days'),
  date('1899-12-30', '+41535 days'),
  0,
  2013,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-7838 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41227 days'),
  date('1899-12-30', '+41244 days'),
  0,
  2012,
  11,
  17,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-9385 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40948 days'),
  date('1899-12-30', '+40949 days'),
  0,
  2012,
  2,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17548 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40957 days'),
  date('1899-12-30', '+40958 days'),
  0,
  2012,
  2,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15304 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41106 days'),
  date('1899-12-30', '+41115 days'),
  0,
  2012,
  7,
  9,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-27649 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41461 days'),
  date('1899-12-30', '+41465 days'),
  0,
  2013,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6572 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41158 days'),
  date('1899-12-30', '+41161 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-28181 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41007 days'),
  date('1899-12-30', '+41017 days'),
  0,
  2012,
  4,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-10994 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41057 days'),
  date('1899-12-30', '+41060 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-8979 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41447 days'),
  date('1899-12-30', '+41451 days'),
  0,
  2013,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19002 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41422 days'),
  date('1899-12-30', '+41423 days'),
  0,
  2013,
  5,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-26691 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41282 days'),
  date('1899-12-30', '+41283 days'),
  0,
  2013,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-13347 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41323 days'),
  date('1899-12-30', '+41325 days'),
  0,
  2013,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22540 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40947 days'),
  date('1899-12-30', '+40960 days'),
  0,
  2012,
  2,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-25624 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41275 days'),
  date('1899-12-30', '+41286 days'),
  0,
  2013,
  1,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19881 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41395 days'),
  date('1899-12-30', '+41441 days'),
  0,
  2013,
  5,
  46,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19957 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41031 days'),
  date('1899-12-30', '+41035 days'),
  0,
  2012,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18137 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40918 days'),
  date('1899-12-30', '+40938 days'),
  0,
  2012,
  1,
  20,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11626 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41532 days'),
  date('1899-12-30', '+41541 days'),
  0,
  2013,
  9,
  9,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17159 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41462 days'),
  date('1899-12-30', '+41464 days'),
  0,
  2013,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-25988 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40956 days'),
  date('1899-12-30', '+40964 days'),
  0,
  2012,
  2,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-13574 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41482 days'),
  date('1899-12-30', '+41495 days'),
  0,
  2013,
  7,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-20468 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41328 days'),
  date('1899-12-30', '+41331 days'),
  0,
  2013,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-28199 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41311 days'),
  date('1899-12-30', '+41350 days'),
  0,
  2013,
  2,
  39,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-19956 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41570 days'),
  date('1899-12-30', '+41571 days'),
  0,
  2013,
  10,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-21059 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41034 days'),
  date('1899-12-30', '+41045 days'),
  0,
  2012,
  5,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-3414 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41596 days'),
  date('1899-12-30', '+41598 days'),
  0,
  2013,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-8095 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41029 days'),
  date('1899-12-30', '+41029 days'),
  0,
  2012,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17004 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41535 days'),
  date('1899-12-30', '+41539 days'),
  0,
  2013,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11110 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41085 days'),
  date('1899-12-30', '+41090 days'),
  0,
  2012,
  6,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6559 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41398 days'),
  date('1899-12-30', '+41407 days'),
  0,
  2013,
  5,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-20017 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40967 days'),
  date('1899-12-30', '+40969 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9689 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41529 days'),
  date('1899-12-30', '+41547 days'),
  0,
  2013,
  9,
  18,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3961 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40936 days'),
  date('1899-12-30', '+40936 days'),
  0,
  2012,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-5366 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41044 days'),
  date('1899-12-30', '+41050 days'),
  0,
  2012,
  5,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15365 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41345 days'),
  date('1899-12-30', '+41352 days'),
  0,
  2013,
  3,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-16262 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41444 days'),
  date('1899-12-30', '+41444 days'),
  0,
  2013,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-18471 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41574 days'),
  date('1899-12-30', '+41581 days'),
  0,
  2013,
  10,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-16693 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40947 days'),
  date('1899-12-30', '+40964 days'),
  0,
  2012,
  2,
  17,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11432 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40956 days'),
  date('1899-12-30', '+40967 days'),
  0,
  2012,
  2,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-16446 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41576 days'),
  date('1899-12-30', '+41577 days'),
  0,
  2013,
  10,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-28527 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41177 days'),
  date('1899-12-30', '+41177 days'),
  0,
  2012,
  9,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-8327 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41229 days'),
  date('1899-12-30', '+41232 days'),
  0,
  2012,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6552 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41387 days'),
  date('1899-12-30', '+41387 days'),
  0,
  2013,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-14723 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40968 days'),
  date('1899-12-30', '+40971 days'),
  0,
  2012,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-16952 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41226 days'),
  date('1899-12-30', '+41251 days'),
  0,
  2012,
  11,
  25,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26013 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41243 days'),
  date('1899-12-30', '+41292 days'),
  0,
  2012,
  11,
  49,
  44
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22762 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40975 days'),
  date('1899-12-30', '+40976 days'),
  0,
  2012,
  3,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-21111 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40918 days'),
  date('1899-12-30', '+40924 days'),
  0,
  2012,
  1,
  6,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6911 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40925 days'),
  date('1899-12-30', '+40928 days'),
  0,
  2012,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-27986 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41558 days'),
  date('1899-12-30', '+41565 days'),
  0,
  2013,
  10,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-5956 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41528 days'),
  date('1899-12-30', '+41532 days'),
  0,
  2013,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-9445 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41538 days'),
  date('1899-12-30', '+41540 days'),
  0,
  2013,
  9,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10816 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41448 days'),
  date('1899-12-30', '+41458 days'),
  0,
  2013,
  6,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-27004 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41020 days'),
  date('1899-12-30', '+41026 days'),
  0,
  2012,
  4,
  6,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-3543 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41219 days'),
  date('1899-12-30', '+41219 days'),
  0,
  2012,
  11,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-3161 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41579 days'),
  date('1899-12-30', '+41625 days'),
  0,
  2013,
  11,
  46,
  41
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-16734 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41220 days'),
  date('1899-12-30', '+41221 days'),
  0,
  2012,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-29875 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41230 days'),
  date('1899-12-30', '+41239 days'),
  0,
  2012,
  11,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-19600 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41562 days'),
  date('1899-12-30', '+41569 days'),
  0,
  2013,
  10,
  7,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-18575 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41491 days'),
  date('1899-12-30', '+41495 days'),
  0,
  2013,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-12293 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41258 days'),
  date('1899-12-30', '+41268 days'),
  0,
  2012,
  12,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-14495 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40988 days'),
  date('1899-12-30', '+40992 days'),
  0,
  2012,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-27531 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41594 days'),
  date('1899-12-30', '+41597 days'),
  0,
  2013,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-15667 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41358 days'),
  date('1899-12-30', '+41370 days'),
  0,
  2013,
  3,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-16088 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41475 days'),
  date('1899-12-30', '+41498 days'),
  0,
  2013,
  7,
  23,
  18
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-4371 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41590 days'),
  date('1899-12-30', '+41609 days'),
  0,
  2013,
  11,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-20221 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41427 days'),
  date('1899-12-30', '+41430 days'),
  0,
  2013,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-6358 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41638 days'),
  date('1899-12-30', '+41647 days'),
  0,
  2013,
  12,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26585 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41125 days'),
  date('1899-12-30', '+41140 days'),
  0,
  2012,
  8,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-659 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41257 days'),
  date('1899-12-30', '+41257 days'),
  0,
  2012,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7698 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41499 days'),
  date('1899-12-30', '+41499 days'),
  0,
  2013,
  8,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20294 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41029 days'),
  date('1899-12-30', '+41048 days'),
  0,
  2012,
  4,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-8532 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41411 days'),
  date('1899-12-30', '+41412 days'),
  0,
  2013,
  5,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-11692 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41480 days'),
  date('1899-12-30', '+41504 days'),
  0,
  2013,
  7,
  24,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22279 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41051 days'),
  date('1899-12-30', '+41055 days'),
  0,
  2012,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18129 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41287 days'),
  date('1899-12-30', '+41287 days'),
  0,
  2013,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-6860 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41272 days'),
  date('1899-12-30', '+41313 days'),
  0,
  2012,
  12,
  41,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40955 days'),
  date('1899-12-30', '+41004 days'),
  0,
  2012,
  2,
  49,
  34
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11237 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41465 days'),
  date('1899-12-30', '+41468 days'),
  0,
  2013,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22302 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41610 days'),
  date('1899-12-30', '+41629 days'),
  0,
  2013,
  12,
  19,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-28094 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41131 days'),
  date('1899-12-30', '+41132 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-16902 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41249 days'),
  date('1899-12-30', '+41257 days'),
  0,
  2012,
  12,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6949 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41593 days'),
  date('1899-12-30', '+41596 days'),
  0,
  2013,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-15321 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40918 days'),
  date('1899-12-30', '+40928 days'),
  0,
  2012,
  1,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19256 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41288 days'),
  date('1899-12-30', '+41315 days'),
  0,
  2013,
  1,
  27,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-14416 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41614 days'),
  date('1899-12-30', '+41652 days'),
  0,
  2013,
  12,
  38,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4559 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41301 days'),
  date('1899-12-30', '+41316 days'),
  0,
  2013,
  1,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-25542 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41435 days'),
  date('1899-12-30', '+41443 days'),
  0,
  2013,
  6,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4271 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41565 days'),
  date('1899-12-30', '+41565 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-24909 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41232 days'),
  date('1899-12-30', '+41240 days'),
  0,
  2012,
  11,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-27128 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41494 days'),
  date('1899-12-30', '+41506 days'),
  0,
  2013,
  8,
  12,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10456 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41106 days'),
  date('1899-12-30', '+41108 days'),
  0,
  2012,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17879 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41394 days'),
  date('1899-12-30', '+41398 days'),
  0,
  2013,
  4,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-18073 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41556 days'),
  date('1899-12-30', '+41556 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18294 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41412 days'),
  date('1899-12-30', '+41447 days'),
  0,
  2013,
  5,
  35,
  30
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17462 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41232 days'),
  date('1899-12-30', '+41235 days'),
  0,
  2012,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-17030 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41625 days'),
  date('1899-12-30', '+41674 days'),
  0,
  2013,
  12,
  49,
  44
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-5463 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41584 days'),
  date('1899-12-30', '+41586 days'),
  0,
  2013,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-12429 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40914 days'),
  date('1899-12-30', '+40960 days'),
  0,
  2012,
  1,
  46,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22154 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40925 days'),
  date('1899-12-30', '+40942 days'),
  0,
  2012,
  1,
  17,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-9804 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41628 days'),
  date('1899-12-30', '+41636 days'),
  0,
  2013,
  12,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-2532 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41297 days'),
  date('1899-12-30', '+41333 days'),
  0,
  2013,
  1,
  36,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-12291 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41126 days'),
  date('1899-12-30', '+41133 days'),
  0,
  2012,
  8,
  7,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-14101 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41137 days'),
  date('1899-12-30', '+41170 days'),
  0,
  2012,
  8,
  33,
  18
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-11805 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41571 days'),
  date('1899-12-30', '+41612 days'),
  0,
  2013,
  10,
  41,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-28160 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40956 days'),
  date('1899-12-30', '+40994 days'),
  0,
  2012,
  2,
  38,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-24185 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40976 days'),
  date('1899-12-30', '+40990 days'),
  0,
  2012,
  3,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-126 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41272 days'),
  date('1899-12-30', '+41275 days'),
  0,
  2012,
  12,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-10076 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41577 days'),
  date('1899-12-30', '+41579 days'),
  0,
  2013,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-21685 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41026 days'),
  date('1899-12-30', '+41069 days'),
  0,
  2012,
  4,
  43,
  38
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10617 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41376 days'),
  date('1899-12-30', '+41395 days'),
  0,
  2013,
  4,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15092 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41600 days'),
  date('1899-12-30', '+41619 days'),
  0,
  2013,
  11,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-24499 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40947 days'),
  date('1899-12-30', '+40962 days'),
  0,
  2012,
  2,
  15,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-7437 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41044 days'),
  date('1899-12-30', '+41044 days'),
  0,
  2012,
  5,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-449 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41088 days'),
  date('1899-12-30', '+41116 days'),
  0,
  2012,
  6,
  28,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20178 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41503 days'),
  date('1899-12-30', '+41543 days'),
  0,
  2013,
  8,
  40,
  35
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-26707 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41247 days'),
  date('1899-12-30', '+41293 days'),
  0,
  2012,
  12,
  46,
  41
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-26767 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41345 days'),
  date('1899-12-30', '+41349 days'),
  0,
  2013,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-26558 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41432 days'),
  date('1899-12-30', '+41433 days'),
  0,
  2013,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-18664 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41478 days'),
  date('1899-12-30', '+41482 days'),
  0,
  2013,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-16484 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41478 days'),
  date('1899-12-30', '+41491 days'),
  0,
  2013,
  7,
  13,
  8
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17577 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41196 days'),
  date('1899-12-30', '+41202 days'),
  0,
  2012,
  10,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10991 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41104 days'),
  date('1899-12-30', '+41105 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-29210 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41582 days'),
  date('1899-12-30', '+41585 days'),
  0,
  2013,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15678 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41048 days'),
  date('1899-12-30', '+41065 days'),
  0,
  2012,
  5,
  17,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-1356 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41012 days'),
  date('1899-12-30', '+41013 days'),
  0,
  2012,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-17619 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41265 days'),
  date('1899-12-30', '+41274 days'),
  0,
  2012,
  12,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-6638 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41403 days'),
  date('1899-12-30', '+41407 days'),
  0,
  2013,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9602 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41469 days'),
  date('1899-12-30', '+41473 days'),
  0,
  2013,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-7706 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41464 days'),
  date('1899-12-30', '+41479 days'),
  0,
  2013,
  7,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2299 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41505 days'),
  date('1899-12-30', '+41535 days'),
  0,
  2013,
  8,
  30,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10214 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41527 days'),
  date('1899-12-30', '+41538 days'),
  0,
  2013,
  9,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-15940 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41165 days'),
  date('1899-12-30', '+41176 days'),
  0,
  2012,
  9,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6376 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41030 days'),
  date('1899-12-30', '+41034 days'),
  0,
  2012,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-20524 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41507 days'),
  date('1899-12-30', '+41507 days'),
  0,
  2013,
  8,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-19428 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41424 days'),
  date('1899-12-30', '+41426 days'),
  0,
  2013,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-11160 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41585 days'),
  date('1899-12-30', '+41602 days'),
  0,
  2013,
  11,
  17,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-26793 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41103 days'),
  date('1899-12-30', '+41107 days'),
  0,
  2012,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-22583 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41574 days'),
  date('1899-12-30', '+41574 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-27277 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41625 days'),
  date('1899-12-30', '+41626 days'),
  0,
  2013,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-14412 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41420 days'),
  date('1899-12-30', '+41423 days'),
  0,
  2013,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-15094 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41494 days'),
  date('1899-12-30', '+41498 days'),
  0,
  2013,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-16216 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41247 days'),
  date('1899-12-30', '+41248 days'),
  0,
  2012,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-21044 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41441 days'),
  date('1899-12-30', '+41453 days'),
  0,
  2013,
  6,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-28939 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41631 days'),
  date('1899-12-30', '+41633 days'),
  0,
  2013,
  12,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-28653 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41126 days'),
  date('1899-12-30', '+41145 days'),
  0,
  2012,
  8,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26769 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41355 days'),
  date('1899-12-30', '+41355 days'),
  0,
  2013,
  3,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-580 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41488 days'),
  date('1899-12-30', '+41512 days'),
  0,
  2013,
  8,
  24,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20982 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40965 days'),
  date('1899-12-30', '+40983 days'),
  0,
  2012,
  2,
  18,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18119 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40968 days'),
  date('1899-12-30', '+40970 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4854 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40967 days'),
  date('1899-12-30', '+40971 days'),
  0,
  2012,
  2,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4088 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41290 days'),
  date('1899-12-30', '+41300 days'),
  0,
  2013,
  1,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-26185 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41414 days'),
  date('1899-12-30', '+41416 days'),
  0,
  2013,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6942 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41085 days'),
  date('1899-12-30', '+41096 days'),
  0,
  2012,
  6,
  11,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-11502 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41002 days'),
  date('1899-12-30', '+41003 days'),
  0,
  2012,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-21398 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41174 days'),
  date('1899-12-30', '+41188 days'),
  0,
  2012,
  9,
  14,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23505 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40992 days'),
  date('1899-12-30', '+40994 days'),
  0,
  2012,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8406 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41002 days'),
  date('1899-12-30', '+41030 days'),
  0,
  2012,
  4,
  28,
  23
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-20819 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41198 days'),
  date('1899-12-30', '+41212 days'),
  0,
  2012,
  10,
  14,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4756 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40994 days'),
  date('1899-12-30', '+40997 days'),
  0,
  2012,
  3,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26614 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41437 days'),
  date('1899-12-30', '+41450 days'),
  0,
  2013,
  6,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10161 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41079 days'),
  date('1899-12-30', '+41091 days'),
  0,
  2012,
  6,
  12,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-146 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41369 days'),
  date('1899-12-30', '+41373 days'),
  0,
  2013,
  4,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7099 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41065 days'),
  date('1899-12-30', '+41081 days'),
  0,
  2012,
  6,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-2807 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41118 days'),
  date('1899-12-30', '+41120 days'),
  0,
  2012,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26253 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41420 days'),
  date('1899-12-30', '+41423 days'),
  0,
  2013,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27711 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41555 days'),
  date('1899-12-30', '+41569 days'),
  0,
  2013,
  10,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-27839 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40936 days'),
  date('1899-12-30', '+40946 days'),
  0,
  2012,
  1,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-9410 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40951 days'),
  date('1899-12-30', '+40954 days'),
  0,
  2012,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-6655 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41433 days'),
  date('1899-12-30', '+41437 days'),
  0,
  2013,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-27785 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41463 days'),
  date('1899-12-30', '+41465 days'),
  0,
  2013,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-16144 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41397 days'),
  date('1899-12-30', '+41446 days'),
  0,
  2013,
  5,
  49,
  34
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7682 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41544 days'),
  date('1899-12-30', '+41578 days'),
  0,
  2013,
  9,
  34,
  29
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-24301 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41087 days'),
  date('1899-12-30', '+41087 days'),
  0,
  2012,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23345 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41262 days'),
  date('1899-12-30', '+41296 days'),
  0,
  2012,
  12,
  34,
  19
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1720 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41493 days'),
  date('1899-12-30', '+41499 days'),
  0,
  2013,
  8,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-14226 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41459 days'),
  date('1899-12-30', '+41460 days'),
  0,
  2013,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-19612 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41043 days'),
  date('1899-12-30', '+41044 days'),
  0,
  2012,
  5,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6221 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41242 days'),
  date('1899-12-30', '+41253 days'),
  0,
  2012,
  11,
  11,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-23090 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40946 days'),
  date('1899-12-30', '+40987 days'),
  0,
  2012,
  2,
  41,
  36
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-19893 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41066 days'),
  date('1899-12-30', '+41070 days'),
  0,
  2012,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2535 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41520 days'),
  date('1899-12-30', '+41530 days'),
  0,
  2013,
  9,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-24759 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41626 days'),
  date('1899-12-30', '+41629 days'),
  0,
  2013,
  12,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-3376 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41242 days'),
  date('1899-12-30', '+41245 days'),
  0,
  2012,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-6186 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41402 days'),
  date('1899-12-30', '+41420 days'),
  0,
  2013,
  5,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-22066 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41251 days'),
  date('1899-12-30', '+41252 days'),
  0,
  2012,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-8973 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41613 days'),
  date('1899-12-30', '+41617 days'),
  0,
  2013,
  12,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-23585 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41564 days'),
  date('1899-12-30', '+41564 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-29171 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41176 days'),
  date('1899-12-30', '+41180 days'),
  0,
  2012,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-23285 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41234 days'),
  date('1899-12-30', '+41255 days'),
  0,
  2012,
  11,
  21,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23206 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41323 days'),
  date('1899-12-30', '+41332 days'),
  0,
  2013,
  2,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3380 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41061 days'),
  date('1899-12-30', '+41081 days'),
  0,
  2012,
  6,
  20,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-10879 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41504 days'),
  date('1899-12-30', '+41522 days'),
  0,
  2013,
  8,
  18,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-11891 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41526 days'),
  date('1899-12-30', '+41530 days'),
  0,
  2013,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-16282 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41079 days'),
  date('1899-12-30', '+41079 days'),
  0,
  2012,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19373 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41071 days'),
  date('1899-12-30', '+41112 days'),
  0,
  2012,
  6,
  41,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-18216 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41440 days'),
  date('1899-12-30', '+41442 days'),
  0,
  2013,
  6,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-16224 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41309 days'),
  date('1899-12-30', '+41343 days'),
  0,
  2013,
  2,
  34,
  29
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-29162 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41447 days'),
  date('1899-12-30', '+41463 days'),
  0,
  2013,
  6,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-896 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41386 days'),
  date('1899-12-30', '+41389 days'),
  0,
  2013,
  4,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-9365 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41541 days'),
  date('1899-12-30', '+41566 days'),
  0,
  2013,
  9,
  25,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-26807 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41321 days'),
  date('1899-12-30', '+41351 days'),
  0,
  2013,
  2,
  30,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-20104 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41070 days'),
  date('1899-12-30', '+41089 days'),
  0,
  2012,
  6,
  19,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-3290 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41205 days'),
  date('1899-12-30', '+41211 days'),
  0,
  2012,
  10,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-7697 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41500 days'),
  date('1899-12-30', '+41503 days'),
  0,
  2013,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-3368 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41362 days'),
  date('1899-12-30', '+41367 days'),
  0,
  2013,
  3,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-27318 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41346 days'),
  date('1899-12-30', '+41377 days'),
  0,
  2013,
  3,
  31,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-8682 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41587 days'),
  date('1899-12-30', '+41624 days'),
  0,
  2013,
  11,
  37,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-13173 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41518 days'),
  date('1899-12-30', '+41520 days'),
  0,
  2013,
  9,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9378 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40993 days'),
  date('1899-12-30', '+41000 days'),
  0,
  2012,
  3,
  7,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9118 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41355 days'),
  date('1899-12-30', '+41376 days'),
  0,
  2013,
  3,
  21,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-4268 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41638 days'),
  date('1899-12-30', '+41639 days'),
  0,
  2013,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-11253 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41084 days'),
  date('1899-12-30', '+41088 days'),
  0,
  2012,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-24078 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41463 days'),
  date('1899-12-30', '+41463 days'),
  0,
  2013,
  7,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-21585 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41055 days'),
  date('1899-12-30', '+41074 days'),
  0,
  2012,
  5,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-8092 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41075 days'),
  date('1899-12-30', '+41076 days'),
  0,
  2012,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19300 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40979 days'),
  date('1899-12-30', '+40997 days'),
  0,
  2012,
  3,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-2012 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41361 days'),
  date('1899-12-30', '+41365 days'),
  0,
  2013,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-13718 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41222 days'),
  date('1899-12-30', '+41226 days'),
  0,
  2012,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-12331 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41574 days'),
  date('1899-12-30', '+41578 days'),
  0,
  2013,
  10,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20488 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41273 days'),
  date('1899-12-30', '+41286 days'),
  0,
  2012,
  12,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-57 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41554 days'),
  date('1899-12-30', '+41554 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20093 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40954 days'),
  date('1899-12-30', '+40964 days'),
  0,
  2012,
  2,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24072 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41172 days'),
  date('1899-12-30', '+41194 days'),
  0,
  2012,
  9,
  22,
  17
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-25210 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41594 days'),
  date('1899-12-30', '+41595 days'),
  0,
  2013,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-11958 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40911 days'),
  date('1899-12-30', '+40953 days'),
  0,
  2012,
  1,
  42,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1018 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41431 days'),
  date('1899-12-30', '+41432 days'),
  0,
  2013,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23597 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41126 days'),
  date('1899-12-30', '+41168 days'),
  0,
  2012,
  8,
  42,
  27
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-19980 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41074 days'),
  date('1899-12-30', '+41085 days'),
  0,
  2012,
  6,
  11,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-20354 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40912 days'),
  date('1899-12-30', '+40916 days'),
  0,
  2012,
  1,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-20191 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41075 days'),
  date('1899-12-30', '+41075 days'),
  0,
  2012,
  6,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20161 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41544 days'),
  date('1899-12-30', '+41547 days'),
  0,
  2013,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-13840 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41244 days'),
  date('1899-12-30', '+41256 days'),
  0,
  2012,
  12,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-26312 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41395 days'),
  date('1899-12-30', '+41430 days'),
  0,
  2013,
  5,
  35,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-9852 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40935 days'),
  date('1899-12-30', '+40935 days'),
  0,
  2012,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-25277 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41191 days'),
  date('1899-12-30', '+41191 days'),
  0,
  2012,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-2271 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41026 days'),
  date('1899-12-30', '+41034 days'),
  0,
  2012,
  4,
  8,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26359 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40990 days'),
  date('1899-12-30', '+41008 days'),
  0,
  2012,
  3,
  18,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23446 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41582 days'),
  date('1899-12-30', '+41583 days'),
  0,
  2013,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-3494 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41159 days'),
  date('1899-12-30', '+41196 days'),
  0,
  2012,
  9,
  37,
  22
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-28592 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41175 days'),
  date('1899-12-30', '+41178 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-27013 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40917 days'),
  date('1899-12-30', '+40919 days'),
  0,
  2012,
  1,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15772 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41375 days'),
  date('1899-12-30', '+41379 days'),
  0,
  2013,
  4,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-10679 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41029 days'),
  date('1899-12-30', '+41052 days'),
  0,
  2012,
  4,
  23,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-12874 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41242 days'),
  date('1899-12-30', '+41246 days'),
  0,
  2012,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6810 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41284 days'),
  date('1899-12-30', '+41285 days'),
  0,
  2013,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20644 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41159 days'),
  date('1899-12-30', '+41161 days'),
  0,
  2012,
  9,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-9798 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41141 days'),
  date('1899-12-30', '+41145 days'),
  0,
  2012,
  8,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-8339 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41158 days'),
  date('1899-12-30', '+41171 days'),
  0,
  2012,
  9,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-5842 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41365 days'),
  date('1899-12-30', '+41367 days'),
  0,
  2013,
  4,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6048 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40969 days'),
  date('1899-12-30', '+40978 days'),
  0,
  2012,
  3,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-24200 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41537 days'),
  date('1899-12-30', '+41559 days'),
  0,
  2013,
  9,
  22,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-15271 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41540 days'),
  date('1899-12-30', '+41581 days'),
  0,
  2013,
  9,
  41,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-12783 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41494 days'),
  date('1899-12-30', '+41496 days'),
  0,
  2013,
  8,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6791 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40964 days'),
  date('1899-12-30', '+40979 days'),
  0,
  2012,
  2,
  15,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-28394 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41265 days'),
  date('1899-12-30', '+41284 days'),
  0,
  2012,
  12,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12420 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41053 days'),
  date('1899-12-30', '+41056 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-9425 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41251 days'),
  date('1899-12-30', '+41287 days'),
  0,
  2012,
  12,
  36,
  31
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-24668 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41028 days'),
  date('1899-12-30', '+41047 days'),
  0,
  2012,
  4,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26334 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41621 days'),
  date('1899-12-30', '+41629 days'),
  0,
  2013,
  12,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-25911 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41035 days'),
  date('1899-12-30', '+41040 days'),
  0,
  2012,
  5,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-22703 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41546 days'),
  date('1899-12-30', '+41582 days'),
  0,
  2013,
  9,
  36,
  31
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26110 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41100 days'),
  date('1899-12-30', '+41101 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-17198 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41605 days'),
  date('1899-12-30', '+41607 days'),
  0,
  2013,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-25647 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41111 days'),
  date('1899-12-30', '+41126 days'),
  0,
  2012,
  7,
  15,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-4233 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40964 days'),
  date('1899-12-30', '+40967 days'),
  0,
  2012,
  2,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-7342 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41287 days'),
  date('1899-12-30', '+41298 days'),
  0,
  2013,
  1,
  11,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-28668 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41329 days'),
  date('1899-12-30', '+41375 days'),
  0,
  2013,
  2,
  46,
  41
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-9215 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41471 days'),
  date('1899-12-30', '+41471 days'),
  0,
  2013,
  7,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17336 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41222 days'),
  date('1899-12-30', '+41262 days'),
  0,
  2012,
  11,
  40,
  35
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7043 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40913 days'),
  date('1899-12-30', '+40917 days'),
  0,
  2012,
  1,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-7717 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41535 days'),
  date('1899-12-30', '+41554 days'),
  0,
  2013,
  9,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3296 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41199 days'),
  date('1899-12-30', '+41206 days'),
  0,
  2012,
  10,
  7,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-11578 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41177 days'),
  date('1899-12-30', '+41186 days'),
  0,
  2012,
  9,
  9,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-6496 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41495 days'),
  date('1899-12-30', '+41510 days'),
  0,
  2013,
  8,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18883 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41285 days'),
  date('1899-12-30', '+41286 days'),
  0,
  2013,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-12569 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41316 days'),
  date('1899-12-30', '+41328 days'),
  0,
  2013,
  2,
  12,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-24793 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41635 days'),
  date('1899-12-30', '+41635 days'),
  0,
  2013,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-17251 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41136 days'),
  date('1899-12-30', '+41136 days'),
  0,
  2012,
  8,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-56 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41573 days'),
  date('1899-12-30', '+41592 days'),
  0,
  2013,
  10,
  19,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6115 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41262 days'),
  date('1899-12-30', '+41267 days'),
  0,
  2012,
  12,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-2618 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41295 days'),
  date('1899-12-30', '+41306 days'),
  0,
  2013,
  1,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26275 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41264 days'),
  date('1899-12-30', '+41280 days'),
  0,
  2012,
  12,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-5754 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41177 days'),
  date('1899-12-30', '+41181 days'),
  0,
  2012,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1330 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41580 days'),
  date('1899-12-30', '+41583 days'),
  0,
  2013,
  11,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-15527 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41081 days'),
  date('1899-12-30', '+41099 days'),
  0,
  2012,
  6,
  18,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-8614 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41458 days'),
  date('1899-12-30', '+41467 days'),
  0,
  2013,
  7,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7909 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41358 days'),
  date('1899-12-30', '+41370 days'),
  0,
  2013,
  3,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-5321 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41158 days'),
  date('1899-12-30', '+41197 days'),
  0,
  2012,
  9,
  39,
  24
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-3355 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41488 days'),
  date('1899-12-30', '+41490 days'),
  0,
  2013,
  8,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-7544 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41454 days'),
  date('1899-12-30', '+41455 days'),
  0,
  2013,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-4147 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41170 days'),
  date('1899-12-30', '+41170 days'),
  0,
  2012,
  9,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23823 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41058 days'),
  date('1899-12-30', '+41061 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7336 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40977 days'),
  date('1899-12-30', '+40978 days'),
  0,
  2012,
  3,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-12232 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41137 days'),
  date('1899-12-30', '+41138 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-13567 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41431 days'),
  date('1899-12-30', '+41449 days'),
  0,
  2013,
  6,
  18,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17597 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41168 days'),
  date('1899-12-30', '+41171 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-19631 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41123 days'),
  date('1899-12-30', '+41126 days'),
  0,
  2012,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22886 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41481 days'),
  date('1899-12-30', '+41519 days'),
  0,
  2013,
  7,
  38,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-20026 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41001 days'),
  date('1899-12-30', '+41016 days'),
  0,
  2012,
  4,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-16342 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41051 days'),
  date('1899-12-30', '+41055 days'),
  0,
  2012,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-20362 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41001 days'),
  date('1899-12-30', '+41001 days'),
  0,
  2012,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3420 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41284 days'),
  date('1899-12-30', '+41287 days'),
  0,
  2013,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12915 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41172 days'),
  date('1899-12-30', '+41176 days'),
  0,
  2012,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-97 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41561 days'),
  date('1899-12-30', '+41563 days'),
  0,
  2013,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22137 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40966 days'),
  date('1899-12-30', '+40989 days'),
  0,
  2012,
  2,
  23,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-21602 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41429 days'),
  date('1899-12-30', '+41450 days'),
  0,
  2013,
  6,
  21,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-5445 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41341 days'),
  date('1899-12-30', '+41376 days'),
  0,
  2013,
  3,
  35,
  20
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-28150 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41377 days'),
  date('1899-12-30', '+41377 days'),
  0,
  2013,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2090 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40945 days'),
  date('1899-12-30', '+40964 days'),
  0,
  2012,
  2,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-6716 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41316 days'),
  date('1899-12-30', '+41344 days'),
  0,
  2013,
  2,
  28,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-428 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41109 days'),
  date('1899-12-30', '+41114 days'),
  0,
  2012,
  7,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-15443 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41241 days'),
  date('1899-12-30', '+41252 days'),
  0,
  2012,
  11,
  11,
  6
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-21404 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41225 days'),
  date('1899-12-30', '+41255 days'),
  0,
  2012,
  11,
  30,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24714 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41093 days'),
  date('1899-12-30', '+41097 days'),
  0,
  2012,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-23555 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41588 days'),
  date('1899-12-30', '+41621 days'),
  0,
  2013,
  11,
  33,
  28
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-26478 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41457 days'),
  date('1899-12-30', '+41459 days'),
  0,
  2013,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22350 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41025 days'),
  date('1899-12-30', '+41028 days'),
  0,
  2012,
  4,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-20874 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41463 days'),
  date('1899-12-30', '+41485 days'),
  0,
  2013,
  7,
  22,
  17
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-14179 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40954 days'),
  date('1899-12-30', '+40956 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6725 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41146 days'),
  date('1899-12-30', '+41163 days'),
  0,
  2012,
  8,
  17,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22809 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41491 days'),
  date('1899-12-30', '+41492 days'),
  0,
  2013,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-19959 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41193 days'),
  date('1899-12-30', '+41200 days'),
  0,
  2012,
  10,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23598 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41570 days'),
  date('1899-12-30', '+41582 days'),
  0,
  2013,
  10,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-1526 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41093 days'),
  date('1899-12-30', '+41096 days'),
  0,
  2012,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18313 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41201 days'),
  date('1899-12-30', '+41248 days'),
  0,
  2012,
  10,
  47,
  32
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-3868 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41059 days'),
  date('1899-12-30', '+41106 days'),
  0,
  2012,
  5,
  47,
  32
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-833 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41132 days'),
  date('1899-12-30', '+41133 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22504 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41630 days'),
  date('1899-12-30', '+41642 days'),
  0,
  2013,
  12,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-11571 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41366 days'),
  date('1899-12-30', '+41413 days'),
  0,
  2013,
  4,
  47,
  42
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6797 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41186 days'),
  date('1899-12-30', '+41231 days'),
  0,
  2012,
  10,
  45,
  15
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-5912 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41224 days'),
  date('1899-12-30', '+41228 days'),
  0,
  2012,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-11464 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41177 days'),
  date('1899-12-30', '+41180 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-19498 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41100 days'),
  date('1899-12-30', '+41146 days'),
  0,
  2012,
  7,
  46,
  31
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-7891 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41484 days'),
  date('1899-12-30', '+41502 days'),
  0,
  2013,
  7,
  18,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-10649 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40998 days'),
  date('1899-12-30', '+41000 days'),
  0,
  2012,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-21807 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41579 days'),
  date('1899-12-30', '+41590 days'),
  0,
  2013,
  11,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27753 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41516 days'),
  date('1899-12-30', '+41517 days'),
  0,
  2013,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-11404 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41279 days'),
  date('1899-12-30', '+41282 days'),
  0,
  2013,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-6927 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40977 days'),
  date('1899-12-30', '+40977 days'),
  0,
  2012,
  3,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17430 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41244 days'),
  date('1899-12-30', '+41254 days'),
  0,
  2012,
  12,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-12764 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41540 days'),
  date('1899-12-30', '+41588 days'),
  0,
  2013,
  9,
  48,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-14353 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41472 days'),
  date('1899-12-30', '+41496 days'),
  0,
  2013,
  7,
  24,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2478 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41221 days'),
  date('1899-12-30', '+41234 days'),
  0,
  2012,
  11,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-9132 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40915 days'),
  date('1899-12-30', '+40916 days'),
  0,
  2012,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1262 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41512 days'),
  date('1899-12-30', '+41514 days'),
  0,
  2013,
  8,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-11675 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41481 days'),
  date('1899-12-30', '+41484 days'),
  0,
  2013,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-24167 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41091 days'),
  date('1899-12-30', '+41107 days'),
  0,
  2012,
  7,
  16,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18528 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41141 days'),
  date('1899-12-30', '+41149 days'),
  0,
  2012,
  8,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17315 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41514 days'),
  date('1899-12-30', '+41527 days'),
  0,
  2013,
  8,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8884 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41136 days'),
  date('1899-12-30', '+41137 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-8768 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41368 days'),
  date('1899-12-30', '+41369 days'),
  0,
  2013,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-19445 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41491 days'),
  date('1899-12-30', '+41494 days'),
  0,
  2013,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6851 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41002 days'),
  date('1899-12-30', '+41010 days'),
  0,
  2012,
  4,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12225 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41396 days'),
  date('1899-12-30', '+41425 days'),
  0,
  2013,
  5,
  29,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-1250 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40965 days'),
  date('1899-12-30', '+40979 days'),
  0,
  2012,
  2,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6835 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41102 days'),
  date('1899-12-30', '+41144 days'),
  0,
  2012,
  7,
  42,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-9699 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41022 days'),
  date('1899-12-30', '+41026 days'),
  0,
  2012,
  4,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26333 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41061 days'),
  date('1899-12-30', '+41065 days'),
  0,
  2012,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-558 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41230 days'),
  date('1899-12-30', '+41254 days'),
  0,
  2012,
  11,
  24,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-13180 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41069 days'),
  date('1899-12-30', '+41070 days'),
  0,
  2012,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-9113 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41069 days'),
  date('1899-12-30', '+41111 days'),
  0,
  2012,
  6,
  42,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-29387 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41269 days'),
  date('1899-12-30', '+41270 days'),
  0,
  2012,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22889 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41247 days'),
  date('1899-12-30', '+41260 days'),
  0,
  2012,
  12,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12395 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41402 days'),
  date('1899-12-30', '+41406 days'),
  0,
  2013,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-28807 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41301 days'),
  date('1899-12-30', '+41304 days'),
  0,
  2013,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-15767 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41609 days'),
  date('1899-12-30', '+41613 days'),
  0,
  2013,
  12,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-22482 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40949 days'),
  date('1899-12-30', '+40951 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-11240 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41308 days'),
  date('1899-12-30', '+41310 days'),
  0,
  2013,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27487 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41389 days'),
  date('1899-12-30', '+41390 days'),
  0,
  2013,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-16212 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41574 days'),
  date('1899-12-30', '+41578 days'),
  0,
  2013,
  10,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-29890 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40942 days'),
  date('1899-12-30', '+40970 days'),
  0,
  2012,
  2,
  28,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-28221 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41521 days'),
  date('1899-12-30', '+41524 days'),
  0,
  2013,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-10876 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41041 days'),
  date('1899-12-30', '+41060 days'),
  0,
  2012,
  5,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-5473 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41565 days'),
  date('1899-12-30', '+41568 days'),
  0,
  2013,
  10,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-27768 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41443 days'),
  date('1899-12-30', '+41453 days'),
  0,
  2013,
  6,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19998 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41479 days'),
  date('1899-12-30', '+41496 days'),
  0,
  2013,
  7,
  17,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-1255 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41635 days'),
  date('1899-12-30', '+41654 days'),
  0,
  2013,
  12,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27472 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41536 days'),
  date('1899-12-30', '+41548 days'),
  0,
  2013,
  9,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-14151 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41530 days'),
  date('1899-12-30', '+41533 days'),
  0,
  2013,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-25293 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41516 days'),
  date('1899-12-30', '+41559 days'),
  0,
  2013,
  8,
  43,
  38
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-14484 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41069 days'),
  date('1899-12-30', '+41102 days'),
  0,
  2012,
  6,
  33,
  28
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-27955 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41076 days'),
  date('1899-12-30', '+41078 days'),
  0,
  2012,
  6,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-13236 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41095 days'),
  date('1899-12-30', '+41096 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-16294 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40981 days'),
  date('1899-12-30', '+40985 days'),
  0,
  2012,
  3,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-14543 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41108 days'),
  date('1899-12-30', '+41112 days'),
  0,
  2012,
  7,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24654 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40925 days'),
  date('1899-12-30', '+40928 days'),
  0,
  2012,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-3665 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41302 days'),
  date('1899-12-30', '+41312 days'),
  0,
  2013,
  1,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27562 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41616 days'),
  date('1899-12-30', '+41616 days'),
  0,
  2013,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-25554 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41083 days'),
  date('1899-12-30', '+41089 days'),
  0,
  2012,
  6,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-14937 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41630 days'),
  date('1899-12-30', '+41637 days'),
  0,
  2013,
  12,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-4303 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41291 days'),
  date('1899-12-30', '+41327 days'),
  0,
  2013,
  1,
  36,
  21
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22437 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41111 days'),
  date('1899-12-30', '+41112 days'),
  0,
  2012,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-11320 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41011 days'),
  date('1899-12-30', '+41022 days'),
  0,
  2012,
  4,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10968 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41018 days'),
  date('1899-12-30', '+41022 days'),
  0,
  2012,
  4,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17521 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41463 days'),
  date('1899-12-30', '+41468 days'),
  0,
  2013,
  7,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-6947 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40969 days'),
  date('1899-12-30', '+41004 days'),
  0,
  2012,
  3,
  35,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-2353 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41521 days'),
  date('1899-12-30', '+41545 days'),
  0,
  2013,
  9,
  24,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-22362 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41454 days'),
  date('1899-12-30', '+41458 days'),
  0,
  2013,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9977 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41559 days'),
  date('1899-12-30', '+41559 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-1207 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41468 days'),
  date('1899-12-30', '+41478 days'),
  0,
  2013,
  7,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20402 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41374 days'),
  date('1899-12-30', '+41389 days'),
  0,
  2013,
  4,
  15,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-16340 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40964 days'),
  date('1899-12-30', '+40965 days'),
  0,
  2012,
  2,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-20897 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41361 days'),
  date('1899-12-30', '+41363 days'),
  0,
  2013,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-18335 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41229 days'),
  date('1899-12-30', '+41262 days'),
  0,
  2012,
  11,
  33,
  28
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-10490 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41502 days'),
  date('1899-12-30', '+41525 days'),
  0,
  2013,
  8,
  23,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-5390 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41602 days'),
  date('1899-12-30', '+41606 days'),
  0,
  2013,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7859 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41205 days'),
  date('1899-12-30', '+41211 days'),
  0,
  2012,
  10,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-20851 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41278 days'),
  date('1899-12-30', '+41278 days'),
  0,
  2013,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20443 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41069 days'),
  date('1899-12-30', '+41091 days'),
  0,
  2012,
  6,
  22,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22416 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41413 days'),
  date('1899-12-30', '+41416 days'),
  0,
  2013,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-70 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41179 days'),
  date('1899-12-30', '+41182 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-4584 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41323 days'),
  date('1899-12-30', '+41327 days'),
  0,
  2013,
  2,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27921 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41238 days'),
  date('1899-12-30', '+41282 days'),
  0,
  2012,
  11,
  44,
  39
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-13401 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41278 days'),
  date('1899-12-30', '+41325 days'),
  0,
  2013,
  1,
  47,
  17
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-19148 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41497 days'),
  date('1899-12-30', '+41513 days'),
  0,
  2013,
  8,
  16,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-83 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41431 days'),
  date('1899-12-30', '+41440 days'),
  0,
  2013,
  6,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-14947 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41245 days'),
  date('1899-12-30', '+41286 days'),
  0,
  2012,
  12,
  41,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-7560 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41350 days'),
  date('1899-12-30', '+41358 days'),
  0,
  2013,
  3,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-7406 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41451 days'),
  date('1899-12-30', '+41454 days'),
  0,
  2013,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21518 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40910 days'),
  date('1899-12-30', '+40910 days'),
  0,
  2012,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-19942 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41176 days'),
  date('1899-12-30', '+41178 days'),
  0,
  2012,
  9,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-24995 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41094 days'),
  date('1899-12-30', '+41107 days'),
  0,
  2012,
  7,
  13,
  8
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-3632 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41631 days'),
  date('1899-12-30', '+41636 days'),
  0,
  2013,
  12,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-23089 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41404 days'),
  date('1899-12-30', '+41406 days'),
  0,
  2013,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17256 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41476 days'),
  date('1899-12-30', '+41483 days'),
  0,
  2013,
  7,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21854 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41294 days'),
  date('1899-12-30', '+41310 days'),
  0,
  2013,
  1,
  16,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-26368 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41603 days'),
  date('1899-12-30', '+41622 days'),
  0,
  2013,
  11,
  19,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-12931 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41241 days'),
  date('1899-12-30', '+41242 days'),
  0,
  2012,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-14196 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41568 days'),
  date('1899-12-30', '+41571 days'),
  0,
  2013,
  10,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-22987 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41122 days'),
  date('1899-12-30', '+41140 days'),
  0,
  2012,
  8,
  18,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-24695 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41461 days'),
  date('1899-12-30', '+41472 days'),
  0,
  2013,
  7,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-24522 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41160 days'),
  date('1899-12-30', '+41160 days'),
  0,
  2012,
  9,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-5561 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41261 days'),
  date('1899-12-30', '+41265 days'),
  0,
  2012,
  12,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-22101 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40968 days'),
  date('1899-12-30', '+40977 days'),
  0,
  2012,
  2,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-16512 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41203 days'),
  date('1899-12-30', '+41203 days'),
  0,
  2012,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-5586 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41253 days'),
  date('1899-12-30', '+41282 days'),
  0,
  2012,
  12,
  29,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-25668 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40940 days'),
  date('1899-12-30', '+40942 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-9416 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40930 days'),
  date('1899-12-30', '+40946 days'),
  0,
  2012,
  1,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-24316 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41184 days'),
  date('1899-12-30', '+41228 days'),
  0,
  2012,
  10,
  44,
  39
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-14504 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41383 days'),
  date('1899-12-30', '+41383 days'),
  0,
  2013,
  4,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-27892 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41562 days'),
  date('1899-12-30', '+41564 days'),
  0,
  2013,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6821 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41029 days'),
  date('1899-12-30', '+41031 days'),
  0,
  2012,
  4,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-18487 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41352 days'),
  date('1899-12-30', '+41386 days'),
  0,
  2013,
  3,
  34,
  29
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-4215 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40963 days'),
  date('1899-12-30', '+40965 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-11687 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40946 days'),
  date('1899-12-30', '+40948 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-20534 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41014 days'),
  date('1899-12-30', '+41053 days'),
  0,
  2012,
  4,
  39,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-18065 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41415 days'),
  date('1899-12-30', '+41418 days'),
  0,
  2013,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-3626 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41253 days'),
  date('1899-12-30', '+41271 days'),
  0,
  2012,
  12,
  18,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-7126 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41102 days'),
  date('1899-12-30', '+41112 days'),
  0,
  2012,
  7,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-1254 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41188 days'),
  date('1899-12-30', '+41197 days'),
  0,
  2012,
  10,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19035 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41475 days'),
  date('1899-12-30', '+41520 days'),
  0,
  2013,
  7,
  45,
  40
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6517 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41438 days'),
  date('1899-12-30', '+41457 days'),
  0,
  2013,
  6,
  19,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6926 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41004 days'),
  date('1899-12-30', '+41008 days'),
  0,
  2012,
  4,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21817 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41094 days'),
  date('1899-12-30', '+41113 days'),
  0,
  2012,
  7,
  19,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20107 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40956 days'),
  date('1899-12-30', '+40976 days'),
  0,
  2012,
  2,
  20,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-17947 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41215 days'),
  date('1899-12-30', '+41243 days'),
  0,
  2012,
  11,
  28,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-25983 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41413 days'),
  date('1899-12-30', '+41422 days'),
  0,
  2013,
  5,
  9,
  4
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12357 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40978 days'),
  date('1899-12-30', '+41011 days'),
  0,
  2012,
  3,
  33,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-25995 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41032 days'),
  date('1899-12-30', '+41032 days'),
  0,
  2012,
  5,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18161 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40941 days'),
  date('1899-12-30', '+40958 days'),
  0,
  2012,
  2,
  17,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-18401 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41558 days'),
  date('1899-12-30', '+41560 days'),
  0,
  2013,
  10,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-12956 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41603 days'),
  date('1899-12-30', '+41629 days'),
  0,
  2013,
  11,
  26,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-28201 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41161 days'),
  date('1899-12-30', '+41164 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-23996 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41258 days'),
  date('1899-12-30', '+41262 days'),
  0,
  2012,
  12,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-12025 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41211 days'),
  date('1899-12-30', '+41225 days'),
  0,
  2012,
  10,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-13807 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41219 days'),
  date('1899-12-30', '+41221 days'),
  0,
  2012,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23296 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41519 days'),
  date('1899-12-30', '+41529 days'),
  0,
  2013,
  9,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-7786 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41102 days'),
  date('1899-12-30', '+41105 days'),
  0,
  2012,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10473 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41151 days'),
  date('1899-12-30', '+41154 days'),
  0,
  2012,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-12863 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41089 days'),
  date('1899-12-30', '+41105 days'),
  0,
  2012,
  6,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-8700 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41298 days'),
  date('1899-12-30', '+41298 days'),
  0,
  2013,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-3770 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41620 days'),
  date('1899-12-30', '+41637 days'),
  0,
  2013,
  12,
  17,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22662 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41319 days'),
  date('1899-12-30', '+41324 days'),
  0,
  2013,
  2,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-20999 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41356 days'),
  date('1899-12-30', '+41373 days'),
  0,
  2013,
  3,
  17,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-15963 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41046 days'),
  date('1899-12-30', '+41047 days'),
  0,
  2012,
  5,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-11997 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41453 days'),
  date('1899-12-30', '+41454 days'),
  0,
  2013,
  6,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9845 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41011 days'),
  date('1899-12-30', '+41012 days'),
  0,
  2012,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-14667 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41564 days'),
  date('1899-12-30', '+41573 days'),
  0,
  2013,
  10,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-1549 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41516 days'),
  date('1899-12-30', '+41519 days'),
  0,
  2013,
  8,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-29734 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41085 days'),
  date('1899-12-30', '+41088 days'),
  0,
  2012,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20142 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41176 days'),
  date('1899-12-30', '+41180 days'),
  0,
  2012,
  9,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-16049 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41088 days'),
  date('1899-12-30', '+41091 days'),
  0,
  2012,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-15115 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41187 days'),
  date('1899-12-30', '+41187 days'),
  0,
  2012,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-371 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41280 days'),
  date('1899-12-30', '+41280 days'),
  0,
  2013,
  1,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-567 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41241 days'),
  date('1899-12-30', '+41243 days'),
  0,
  2012,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-717 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41216 days'),
  date('1899-12-30', '+41230 days'),
  0,
  2012,
  11,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-15290 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40984 days'),
  date('1899-12-30', '+40990 days'),
  0,
  2012,
  3,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-9824 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41404 days'),
  date('1899-12-30', '+41453 days'),
  0,
  2013,
  5,
  49,
  34
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-6562 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41017 days'),
  date('1899-12-30', '+41020 days'),
  0,
  2012,
  4,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-22788 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41090 days'),
  date('1899-12-30', '+41099 days'),
  0,
  2012,
  6,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22962 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41463 days'),
  date('1899-12-30', '+41466 days'),
  0,
  2013,
  7,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-10450 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41571 days'),
  date('1899-12-30', '+41575 days'),
  0,
  2013,
  10,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-29029 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41590 days'),
  date('1899-12-30', '+41592 days'),
  0,
  2013,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17581 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41521 days'),
  date('1899-12-30', '+41562 days'),
  0,
  2013,
  9,
  41,
  36
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-12056 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41089 days'),
  date('1899-12-30', '+41092 days'),
  0,
  2012,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-2442 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41605 days'),
  date('1899-12-30', '+41637 days'),
  0,
  2013,
  11,
  32,
  27
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8859 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40936 days'),
  date('1899-12-30', '+40976 days'),
  0,
  2012,
  1,
  40,
  35
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1769 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41395 days'),
  date('1899-12-30', '+41399 days'),
  0,
  2013,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17812 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40990 days'),
  date('1899-12-30', '+40996 days'),
  0,
  2012,
  3,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-12747 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41248 days'),
  date('1899-12-30', '+41248 days'),
  0,
  2012,
  12,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-8966 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41471 days'),
  date('1899-12-30', '+41472 days'),
  0,
  2013,
  7,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-11044 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41005 days'),
  date('1899-12-30', '+41007 days'),
  0,
  2012,
  4,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-12573 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41351 days'),
  date('1899-12-30', '+41356 days'),
  0,
  2013,
  3,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-21461 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41100 days'),
  date('1899-12-30', '+41100 days'),
  0,
  2012,
  7,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3816 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41420 days'),
  date('1899-12-30', '+41421 days'),
  0,
  2013,
  5,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15263 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41314 days'),
  date('1899-12-30', '+41325 days'),
  0,
  2013,
  2,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-29063 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40960 days'),
  date('1899-12-30', '+40984 days'),
  0,
  2012,
  2,
  24,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-15744 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41216 days'),
  date('1899-12-30', '+41220 days'),
  0,
  2012,
  11,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6458 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41462 days'),
  date('1899-12-30', '+41464 days'),
  0,
  2013,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-21111 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41269 days'),
  date('1899-12-30', '+41291 days'),
  0,
  2012,
  12,
  22,
  17
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21165 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41294 days'),
  date('1899-12-30', '+41300 days'),
  0,
  2013,
  1,
  6,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-21222 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41244 days'),
  date('1899-12-30', '+41248 days'),
  0,
  2012,
  12,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23059 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41024 days'),
  date('1899-12-30', '+41025 days'),
  0,
  2012,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-2258 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41621 days'),
  date('1899-12-30', '+41622 days'),
  0,
  2013,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2208 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+40932 days'),
  date('1899-12-30', '+40946 days'),
  0,
  2012,
  1,
  14,
  9
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-20892 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41003 days'),
  date('1899-12-30', '+41020 days'),
  0,
  2012,
  4,
  17,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-14928 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41409 days'),
  date('1899-12-30', '+41440 days'),
  0,
  2013,
  5,
  31,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-17007 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41458 days'),
  date('1899-12-30', '+41506 days'),
  0,
  2013,
  7,
  48,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10745 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41284 days'),
  date('1899-12-30', '+41285 days'),
  0,
  2013,
  1,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1533 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41407 days'),
  date('1899-12-30', '+41426 days'),
  0,
  2013,
  5,
  19,
  14
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-18057 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41549 days'),
  date('1899-12-30', '+41584 days'),
  0,
  2013,
  10,
  35,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-3462 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41105 days'),
  date('1899-12-30', '+41107 days'),
  0,
  2012,
  7,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-23834 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41027 days'),
  date('1899-12-30', '+41028 days'),
  0,
  2012,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-7608 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41229 days'),
  date('1899-12-30', '+41230 days'),
  0,
  2012,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-142 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40944 days'),
  date('1899-12-30', '+40986 days'),
  0,
  2012,
  2,
  42,
  27
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-2173 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41493 days'),
  date('1899-12-30', '+41493 days'),
  0,
  2013,
  8,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-27822 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41355 days'),
  date('1899-12-30', '+41370 days'),
  0,
  2013,
  3,
  15,
  10
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22674 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41183 days'),
  date('1899-12-30', '+41215 days'),
  0,
  2012,
  10,
  32,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-25124 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41461 days'),
  date('1899-12-30', '+41466 days'),
  0,
  2013,
  7,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-26302 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41042 days'),
  date('1899-12-30', '+41045 days'),
  0,
  2012,
  5,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-6622 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40997 days'),
  date('1899-12-30', '+41005 days'),
  0,
  2012,
  3,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-8282 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41123 days'),
  date('1899-12-30', '+41130 days'),
  0,
  2012,
  8,
  7,
  2
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-5211 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41025 days'),
  date('1899-12-30', '+41027 days'),
  0,
  2012,
  4,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-29271 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40933 days'),
  date('1899-12-30', '+40937 days'),
  0,
  2012,
  1,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27499 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41062 days'),
  date('1899-12-30', '+41094 days'),
  0,
  2012,
  6,
  32,
  27
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-10390 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41026 days'),
  date('1899-12-30', '+41042 days'),
  0,
  2012,
  4,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-417 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41219 days'),
  date('1899-12-30', '+41236 days'),
  0,
  2012,
  11,
  17,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-29924 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41516 days'),
  date('1899-12-30', '+41557 days'),
  0,
  2013,
  8,
  41,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-4347 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41212 days'),
  date('1899-12-30', '+41247 days'),
  0,
  2012,
  10,
  35,
  20
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-3268 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41012 days'),
  date('1899-12-30', '+41019 days'),
  0,
  2012,
  4,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-15588 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41503 days'),
  date('1899-12-30', '+41505 days'),
  0,
  2013,
  8,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-5181 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40935 days'),
  date('1899-12-30', '+40938 days'),
  0,
  2012,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-8473 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40971 days'),
  date('1899-12-30', '+40972 days'),
  0,
  2012,
  3,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-10900 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41302 days'),
  date('1899-12-30', '+41305 days'),
  0,
  2013,
  1,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-14937 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40947 days'),
  date('1899-12-30', '+40961 days'),
  0,
  2012,
  2,
  14,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-192 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41515 days'),
  date('1899-12-30', '+41523 days'),
  0,
  2013,
  8,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-16876 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41516 days'),
  date('1899-12-30', '+41554 days'),
  0,
  2013,
  8,
  38,
  8
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-25893 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40950 days'),
  date('1899-12-30', '+40957 days'),
  0,
  2012,
  2,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-4072 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41423 days'),
  date('1899-12-30', '+41425 days'),
  0,
  2013,
  5,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6000 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41250 days'),
  date('1899-12-30', '+41257 days'),
  0,
  2012,
  12,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-28032 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41079 days'),
  date('1899-12-30', '+41091 days'),
  0,
  2012,
  6,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-25886 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41423 days'),
  date('1899-12-30', '+41436 days'),
  0,
  2013,
  5,
  13,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-29530 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41534 days'),
  date('1899-12-30', '+41535 days'),
  0,
  2013,
  9,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-24689 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41262 days'),
  date('1899-12-30', '+41298 days'),
  0,
  2012,
  12,
  36,
  31
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-5172 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41126 days'),
  date('1899-12-30', '+41157 days'),
  0,
  2012,
  8,
  31,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-27450 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41349 days'),
  date('1899-12-30', '+41352 days'),
  0,
  2013,
  3,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-5804 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41444 days'),
  date('1899-12-30', '+41492 days'),
  0,
  2013,
  6,
  48,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22047 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41192 days'),
  date('1899-12-30', '+41202 days'),
  0,
  2012,
  10,
  10,
  5
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7062 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41516 days'),
  date('1899-12-30', '+41527 days'),
  0,
  2013,
  8,
  11,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-27502 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41567 days'),
  date('1899-12-30', '+41576 days'),
  0,
  2013,
  10,
  9,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-29882 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+40925 days'),
  date('1899-12-30', '+40932 days'),
  0,
  2012,
  1,
  7,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7717 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41125 days'),
  date('1899-12-30', '+41130 days'),
  0,
  2012,
  8,
  5,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-26290 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41361 days'),
  date('1899-12-30', '+41377 days'),
  0,
  2013,
  3,
  16,
  11
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-12203 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40969 days'),
  date('1899-12-30', '+40970 days'),
  0,
  2012,
  3,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-13270 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41488 days'),
  date('1899-12-30', '+41501 days'),
  0,
  2013,
  8,
  13,
  8
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2858 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41139 days'),
  date('1899-12-30', '+41161 days'),
  0,
  2012,
  8,
  22,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-15040 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+40974 days'),
  date('1899-12-30', '+40976 days'),
  0,
  2012,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-3370 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41163 days'),
  date('1899-12-30', '+41191 days'),
  0,
  2012,
  9,
  28,
  13
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-11527 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41387 days'),
  date('1899-12-30', '+41403 days'),
  0,
  2013,
  4,
  16,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-15296 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41536 days'),
  date('1899-12-30', '+41553 days'),
  0,
  2013,
  9,
  17,
  12
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-8379 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41611 days'),
  date('1899-12-30', '+41614 days'),
  0,
  2013,
  12,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-22381 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41166 days'),
  date('1899-12-30', '+41169 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-21298 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41584 days'),
  date('1899-12-30', '+41585 days'),
  0,
  2013,
  11,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-22187 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41216 days'),
  date('1899-12-30', '+41218 days'),
  0,
  2012,
  11,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-15036 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41238 days'),
  date('1899-12-30', '+41250 days'),
  0,
  2012,
  11,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-1581 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41497 days'),
  date('1899-12-30', '+41525 days'),
  0,
  2013,
  8,
  28,
  23
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-24841 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41066 days'),
  date('1899-12-30', '+41114 days'),
  0,
  2012,
  6,
  48,
  33
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-20166 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41352 days'),
  date('1899-12-30', '+41360 days'),
  0,
  2013,
  3,
  8,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-5683 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+40997 days'),
  date('1899-12-30', '+41009 days'),
  0,
  2012,
  3,
  12,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-3187 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41427 days'),
  date('1899-12-30', '+41431 days'),
  0,
  2013,
  6,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-12062 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41323 days'),
  date('1899-12-30', '+41333 days'),
  0,
  2013,
  2,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-23008 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41408 days'),
  date('1899-12-30', '+41408 days'),
  0,
  2013,
  5,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-28716 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41234 days'),
  date('1899-12-30', '+41256 days'),
  0,
  2012,
  11,
  22,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-25695 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41353 days'),
  date('1899-12-30', '+41376 days'),
  0,
  2013,
  3,
  23,
  18
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-10043 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41638 days'),
  date('1899-12-30', '+41639 days'),
  0,
  2013,
  12,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6784 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41015 days'),
  date('1899-12-30', '+41016 days'),
  0,
  2012,
  4,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-3538 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41465 days'),
  date('1899-12-30', '+41475 days'),
  0,
  2013,
  7,
  10,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-27788 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41436 days'),
  date('1899-12-30', '+41439 days'),
  0,
  2013,
  6,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-77 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41492 days'),
  date('1899-12-30', '+41526 days'),
  0,
  2013,
  8,
  34,
  19
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-12514 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40942 days'),
  date('1899-12-30', '+40944 days'),
  0,
  2012,
  2,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-1339 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41520 days'),
  date('1899-12-30', '+41561 days'),
  0,
  2013,
  9,
  41,
  26
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-19740 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41476 days'),
  date('1899-12-30', '+41498 days'),
  0,
  2013,
  7,
  22,
  7
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-22197 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41507 days'),
  date('1899-12-30', '+41508 days'),
  0,
  2013,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-16327 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41447 days'),
  date('1899-12-30', '+41489 days'),
  0,
  2013,
  6,
  42,
  27
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-23376 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+40987 days'),
  date('1899-12-30', '+40989 days'),
  0,
  2012,
  3,
  2,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-12322 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+41548 days'),
  date('1899-12-30', '+41548 days'),
  0,
  2013,
  10,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17205 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41422 days'),
  date('1899-12-30', '+41422 days'),
  0,
  2013,
  5,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept1-17115 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept1'),
  date('1899-12-30', '+40972 days'),
  date('1899-12-30', '+40997 days'),
  0,
  2012,
  3,
  25,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-26757 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41205 days'),
  date('1899-12-30', '+41251 days'),
  0,
  2012,
  10,
  46,
  16
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept2-3212 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept2'),
  date('1899-12-30', '+41456 days'),
  date('1899-12-30', '+41503 days'),
  0,
  2013,
  7,
  47,
  42
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-6209 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41142 days'),
  date('1899-12-30', '+41143 days'),
  0,
  2012,
  8,
  1,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-11691 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41340 days'),
  date('1899-12-30', '+41388 days'),
  0,
  2013,
  3,
  48,
  18
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-17721 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41179 days'),
  date('1899-12-30', '+41182 days'),
  0,
  2012,
  9,
  3,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-896 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41419 days'),
  date('1899-12-30', '+41423 days'),
  0,
  2013,
  5,
  4,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept4-7650 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Medio'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept4'),
  date('1899-12-30', '+41482 days'),
  date('1899-12-30', '+41482 days'),
  0,
  2013,
  7,
  0,
  NULL
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept6-7442 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept6'),
  date('1899-12-30', '+41540 days'),
  date('1899-12-30', '+41573 days'),
  0,
  2013,
  9,
  33,
  3
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept5-2417 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Alto'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept5'),
  date('1899-12-30', '+41160 days'),
  date('1899-12-30', '+41166 days'),
  0,
  2012,
  9,
  6,
  1
);
INSERT INTO incidencias(
  numero_incidencia, tipo_id, departamento_id,
  llegada, respuesta, on_time,
  anio_llegada, mes_llegada, tiempo_respuesta, desviacion
) VALUES (
  CAST(Dept3-26079 AS INTEGER),
  (SELECT id_tipo FROM tipos_incidencia WHERE nombre='Bajo'),
  (SELECT id_departamento FROM departamentos WHERE nombre='Dept3'),
  date('1899-12-30', '+41091 days'),
  date('1899-12-30', '+41124 days'),
  0,
  2012,
  7,
  33,
  3
);

COMMIT;
