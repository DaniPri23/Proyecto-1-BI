-- =========================================
-- CARGA DE DIMENSIONES AL DW
-- Ejecutar DESPUÉS de stagingUniversidad.sql 
-- y DESPUÉS de dw.sql
-- =========================================

-- dim_estudiante
INSERT INTO dim_estudiante (id_estudiante, nombre_completo, genero, anio_ingreso, colegio_procedencia)
SELECT TRIM(id_estudiante), nombre_completo, genero, 
       CAST(anio_ingreso AS INT), colegio_procedencia
FROM staging.stg_estudiante;

-- dim_curso
INSERT INTO dim_curso (id_curso, nombre_curso, creditos, nombre_carrera, facultad)
SELECT TRIM(c.id_curso), c.nombre_curso, CAST(c.creditos AS INT),
       ca.nombre_carrera, ca.facultad
FROM staging.stg_curso c
JOIN staging.stg_carrera ca ON c.id_carrera = ca.id_carrera;

-- dim_docente
INSERT INTO dim_docente (id_docente, nombre_completo, tipo_contrato)
SELECT TRIM(id_docente), nombre_completo, tipo_contrato
FROM staging.stg_docente;

-- dim_sede
INSERT INTO dim_sede (id_sede, nombre_sede, ubicacion)
SELECT TRIM(id_sede), nombre_sede, ubicacion
FROM staging.stg_sede;

-- dim_grupo_oferta
INSERT INTO dim_grupo_oferta (id_grupo, periodo_academico, anio, modalidad, franja_horaria)
SELECT TRIM(id_grupo), periodo_academico, CAST(anio AS INT), modalidad, franja_horaria
FROM staging.stg_grupo_oferta;
